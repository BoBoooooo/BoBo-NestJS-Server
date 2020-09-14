/*
 * @file: BaseService
 * @copyright: NanJing Anshare Tech .Com
 * @author: BoBo
 * @Date: 2020年08月10 10:44:35
 */
import { Injectable } from '@nestjs/common';
import { jwtConstants } from 'src/config/constants';
import * as jwt from 'jsonwebtoken';

const guid  = require('uuid');
const dayjs = require('dayjs')

import {
  BaseEntity,
  Repository,
  FindManyOptions,
  LessThan,
  LessThanOrEqual,
  MoreThan,
  MoreThanOrEqual,
  Like,
  Equal,
  Not,
  IsNull,
} from 'typeorm';
import { InjectRepository } from '@nestjs/typeorm';

interface searchType {
  field: string;
  operator: string;
  value: any;
}

interface SearchCondition {
  orderCondition: string;
  searchCondition: searchType[];
  pageIndex: number;
  pageSize: number;
}

@Injectable()
export abstract class BaseService<T> {
  public repository: Repository<T>;
  constructor(@InjectRepository(BaseEntity) repository: Repository<T>) {
    this.repository = repository;
  }

  /**
   * 获取当前token携带信息
   * jwt token
   * @param authorization
   */
   getUserInfoFromToken(authorization) {
    if (!authorization) return null;

    const token = authorization.split(' ')[1];
    const user = jwt.verify(token, jwtConstants.secret);
    return user;
  }

  // 新增接口
  async add(entity: T) {
    // id为null则自动生成guid
    if(!(entity as any).id){
      (entity as any).id = guid.v4();
    }
    (entity as any).timestamp = dayjs().format('YYYY-MM-DD HH:mm:ss')

    await this.repository.insert(entity);
    return entity;
  }
  // 更新接口
  async update(entity: T) {
    // 更新时间戳
    (entity as any).timestamp = dayjs().format('YYYY-MM-DD HH:mm:ss')
    await this.repository.update((entity as any).id, entity);
    return (entity as any).id;
  }

  // 删除接口
  async delete(id: string) {
    await this.repository.delete(id);
    return id;
  }

  // 批量删除接口
  async deleteByIds(ids: string[]) {
    await this.repository.delete(ids);
    return ids;
  }

  // 查询ById接口
  async findById(id: string) {
    const result = await this.repository.findOne(id);
    return result;
  }

 // tree接口
  async tree(){
    const result = await this.repository.find();
    // 此处默认顶层parentId 为 0 , 自行修改
    return toTree(result,'0');
  }

  // list方法带高级查询
  async find(args: SearchCondition) {
    // https://typeorm.io/#/find-options     ->     FindManyOptions
    const params: FindManyOptions = {
      // 缓存 https://www.bookstack.cn/read/TypeORM-0.2.20-zh/caching.md
      // cache: true,
    };

    const { pageIndex, pageSize, searchCondition, orderCondition } = args;
    // 拼接order条件
    if (orderCondition && orderCondition.includes(' ')) {
      const [field, order] = orderCondition.split(' ');
      params.order = {};
      params.order[field] = order.toUpperCase() === 'ASC' ? 1 : -1;
    }
    // 拼接分页条件
    // 若pageIndex,pageSize = 0,0
    // 则默认查询全部
    if (pageIndex && pageSize && pageIndex + pageSize > 1) {
      params.skip = (pageIndex - 1) * pageSize;
      params.take = pageSize;
    }
    if (Array.isArray(searchCondition) && searchCondition.length > 0) {
      // 拼接高级查询条件
      this.getSearchCondition(searchCondition, params);
    }

    const [list, total] = await this.repository.findAndCount(params);

    return {
      list,
      total,
    };
  }

  getSearchCondition(searchCondition: searchType[], params: FindManyOptions) {
    // 一键搜 查询方式为orlike拼接
    let orLike = searchCondition.find(item => item.operator === 'orlike');
    if (orLike) {
      params.where = [];
      let fields = orLike.field.split(',');
      fields.forEach(field => {
        (params.where as any[]).push({
          [field]: Like(`%${orLike.value}%`),
        });
      });
    } else {
      // ...
      params.where = {};
      searchCondition.forEach(obj => {
        const { value, operator, field } = obj;
        switch (operator) {
          case 'eq': // =
            params.where[field] = Equal(value);
            break;
          case 'neq':
            params.where[field] = Not(value);
            break;
          case 'notNull':
            params.where[field] = Not(IsNull());
            break;
          case 'isNull':
            params.where[field] = IsNull();
            break;
          case 'gt':
            params.where[field] = MoreThan(value);
            break;
          case 'lt':
            params.where[field] = LessThan(value);
            break;
          case 'egt':
            params.where[field] = MoreThanOrEqual(value);
            break;
          case 'elt':
            params.where[field] = LessThanOrEqual(value);
            break;
          case 'like':
            params.where[field] = Like(`%${value}%`);
            break;
          default:
            break;
        }
      });
    }
  }
}


/**
 * 递归遍历list,返回tree结构
 */
function toTree(list,parId){
	let len = list.length
	function loop(parId){
		let res = [];
		for(let i = 0; i < len; i++){
			let item = list[i]
			if(item.parentId === parId){
				item.children = loop(item.id)
				res.push(item)
			}
		}
		return res
	}
	return loop(parId)
}

