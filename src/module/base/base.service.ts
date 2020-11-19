/*
 * @file: BaseService
 * @copyright: NanJing Anshare Tech .Com
 * @author: BoBo
 * @Date: 2020年08月10 10:44:35
 */
import { Injectable } from '@nestjs/common'
import { jwtConstants } from 'src/config/constants'
import * as jwt from 'jsonwebtoken'

const guid = require('uuid')
const dayjs = require('dayjs')

import { BaseEntity, Repository, SelectQueryBuilder } from 'typeorm'
import { InjectRepository } from '@nestjs/typeorm'

interface searchType {
  field: string
  operator: string
  value: any
}

interface SearchCondition {
  orderCondition: string
  searchCondition: searchType[]
  pageIndex: number
  pageSize: number
}

@Injectable()
export abstract class BaseService<T> {
  public repository: Repository<T>
  constructor(@InjectRepository(BaseEntity) repository: Repository<T>) {
    this.repository = repository
  }

  /**
   * 获取当前token携带信息
   * jwt token
   * @param authorization
   */
  getUserInfoFromToken(authorization) {
    if (!authorization) return null

    const token = authorization.split(' ')[1]
    const user = jwt.verify(token, jwtConstants.secret)
    return user
  }

  // 新增接口
  async add(entity: T) {
    const obj = JSON.parse(JSON.stringify(entity as any))

    // id为null则自动生成guid
    if (!obj.id) {
      obj.id = guid.v4()
    }
    obj.timestamp = dayjs(new Date()).format('YYYY-MM-DD HH:mm:ss')

    await this.repository.insert(obj)
    return entity
  }
  // 更新接口
  async update(entity: T) {
    const obj = JSON.parse(JSON.stringify(entity as any))

    // 此处大坑,如果有更好的方案欢迎PR!
    // 更新的时候去除伪列 (此处由于ts的类型检查不带入运行时,不会自动映射属性,否则数据库没有这个字段会报错)
    Object.keys(obj).forEach(k => {
      // 去除伪列,  伪列格式默认为 表名_字段名   例如保存users表 (dept_name)  详见/users/list方法
      if (k.includes('_')) {
        delete obj[k]
      }
    })
    // 更新时间戳
    obj.timestamp = dayjs(new Date()).format('YYYY-MM-DD HH:mm:ss')

    await this.repository.update(obj.id, obj)
    return (entity as any).id
  }

  // 删除接口
  async delete(id: string) {
    await this.repository.delete(id)
    return id
  }

  // 批量删除接口
  async deleteByIds(ids: string[]) {
    await this.repository.delete(ids)
    return ids
  }

  // 查询ById接口
  async findById(id: string) {
    const result = await this.repository.findOne(id)
    return result
  }

  // tree接口
  async tree() {
    const result = await this.repository.find()
    // 此处默认顶层parentId 为 0 , 自行修改
    return toTree(result, '0')
  }

  async find(args: SearchCondition) {
    const qb = this.repository.createQueryBuilder()

    // 拼接sql
    this.splitSql(qb, args)

    const [list, total] = await qb.getManyAndCount()

    return {
      list,
      total
    }
  }

  splitSql(qb: SelectQueryBuilder<T>, args: SearchCondition) {
    const { pageIndex, pageSize, searchCondition, orderCondition } = args
    if (Array.isArray(searchCondition) && searchCondition.length > 0) {
      // 拼接高级查询条件
      this.getSearchCondition(searchCondition, qb)
    }
    // 拼接order条件
    if (orderCondition && orderCondition.includes(' ')) {
      const [field, order] = orderCondition.split(' ')
      qb.orderBy(field, order.toUpperCase() as any)
    }
    // 拼接分页条件
    // 若pageIndex,pageSize = 0,0
    // 则默认查询全部
    if (pageIndex && pageSize && pageIndex + pageSize > 1) {
      qb.skip((pageIndex - 1) * pageSize)
      qb.take(pageSize)
    }
  }

  getSearchCondition(searchCondition: searchType[], qb: SelectQueryBuilder<T>) {
    // 一键搜 查询方式为orlike拼接
    const orLike = searchCondition.find(item => item.operator === 'orlike')
    if (orLike) {
      const fields = orLike.field.split(',')
      fields.forEach(field => {
        qb.orWhere(`${field} LIKE :value`, { value: `%${orLike.value}%` })
      })
    } else {
      // ...
      qb.where('1 = 1')
      searchCondition.forEach(obj => {
        const { value, operator, field } = obj
        switch (operator) {
          case 'eq':
            qb.where(`${field} = :value`, { value })
            break
          case 'neq':
            qb.where(`${field} <> :value`, { value })
            break
          case 'notNull':
            qb.where(`${field} is not null`)
            break
          case 'isNull':
            qb.where(`${field} is null`)
            break
          case 'gt':
            qb.where(`${field} > :value`, { value })
            break
          case 'lt':
            qb.where(`${field} < :value`, { value })
            break
          case 'egt':
            qb.where(`${field} >= :value`, { value })
            break
          case 'elt':
            qb.where(`${field} <= :value`, { value })
            break
          case 'like':
            qb.where(`${field} LIKE :value`, { value: `%${value}%` })
            break
          default:
            break
        }
      })
    }
  }
}

/**
 * 递归遍历list,返回tree结构
 */
function toTree(list, parId) {
  const len = list.length
  function loop(parId) {
    const res = []
    for (let i = 0; i < len; i++) {
      const item = list[i]
      if (item.parentId === parId) {
        item.children = loop(item.id)
        res.push(item)
      }
    }
    return res
  }
  return loop(parId)
}
