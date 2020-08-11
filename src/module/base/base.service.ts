/*
 * @file: BaseService
 * @copyright: NanJing Anshare Tech .Com
 * @author: BoBo
 * @Date: 2020年08月10 10:44:35
 */
import { Injectable } from '@nestjs/common';

import {
  BaseEntity,
  Repository,
  InsertResult,
  UpdateResult,
  DeleteResult,
  FindManyOptions,
  LessThan,
  LessThanOrEqual,
  MoreThan,
  MoreThanOrEqual,
  Like,

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
  protected repository: Repository<T>;
  constructor(@InjectRepository(BaseEntity) repository: Repository<T>) {
    this.repository = repository;
  }

  // 新增接口
  async add(entity: T): Promise<InsertResult> {
    return this.repository.insert(entity);
  }
  // 更新接口
  async update(id: string, entity: T): Promise<UpdateResult> {
    return this.repository.update(id, entity);
  }

  // 删除接口
  async delete(id: string): Promise<DeleteResult> {
    return this.repository.delete(id);
  }

  // 批量删除接口
  async deleteByIds(ids: string[]): Promise<DeleteResult> {
    return this.repository.delete(ids);
  }

  // 查询ById接口
  async findById(id: string): Promise<T> {
    return this.repository.findOne(id);
  }

  // list方法带高级查询
  async find(args: SearchCondition): Promise<T[]> {
    // https://typeorm.io/#/find-options     ->     FindManyOptions
    const params: FindManyOptions = {
      // 缓存
      // cache:true
    };

    const { pageIndex, pageSize, searchCondition, orderCondition } = args;
    // 拼接order条件
    if (orderCondition && orderCondition.includes(' ')) {
      const [field, order] = orderCondition.split(' ');
      params.order={};
      params.order[field] = order.toUpperCase() === 'ASC' ? 1 : -1;
    }
    // 拼接分页条件
    // 若pageIndex,pageSize = 0,0
    // 则默认查询全部
    if (pageIndex + pageSize > 1) {
      params.skip = (pageIndex - 1) * pageSize;
      params.take = pageSize;
    }

    // 拼接高级查询条件
    this.getSearchCondition(searchCondition,params);
    console.log(params);
    return this.repository.find(params);
  }


  getSearchCondition(searchCondition:searchType[],params:FindManyOptions){
    params.where = [];
    // 一键搜
    let orLike = searchCondition.find(item=>item.operator === 'orlike');
    if(orLike){
      let fields = orLike.field.split(',');
      fields.forEach(field=>{
        (params.where as any[]).push({
          [field]:Like(`%${orLike.value}%`)
        })
      })
    }
    else{
      // ...
    }
  }


}
