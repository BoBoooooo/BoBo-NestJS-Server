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
} from 'typeorm';
import { InjectRepository } from '@nestjs/typeorm';

@Injectable()
export abstract class BaseService<T> {
  protected repository: Repository<T>;
  constructor(@InjectRepository(BaseEntity) repository: Repository<T>) {
    this.repository = repository;
  }

  async add(entity: T): Promise<InsertResult> {
    return this.repository.insert(entity);
  }

  async update(id: string, entity: T): Promise<UpdateResult> {
    return this.repository.update(id, entity);
  }

  async find(): Promise<T[]> {
    return this.repository.find();
  }

  async delete(id: string): Promise<DeleteResult> {
    return this.repository.delete(id);
  }

  async findById(id: string): Promise<T> {
    return this.repository.findOne(id);
  }
}
