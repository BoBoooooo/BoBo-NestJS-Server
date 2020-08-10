/*
 * @file: BaseController
 * @copyright: NanJing Anshare Tech .Com
 * @author: BoBo
 * @Date: 2020年08月10 11:45:59
 */
import { BaseService } from './base.service';
import { Body, Controller, Get, Post, Query } from '@nestjs/common';

@Controller()
export abstract class BaseController<T> {
  protected constructor(protected service: BaseService<T>) {

  }

  @Post()
  public async list(@Query('page') page: number = 0, @Query('limit') limit: number = 10) {
    return this.service.find();
  }

  @Post()
  public async add(@Body() data: T) {
    return this.service.add(data);
  }

  @Post()
  public async update(@Body() data: T) {
    return this.service.add(data);
  }

  @Post()
  public async detail(@Query() id: string) {
    return this.service.findById(id);
  }

  @Post()
  public async delete(@Body() id: string) {
    return this.service.delete(id);
  }
}