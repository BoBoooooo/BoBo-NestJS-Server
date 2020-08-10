/*
 * @file: BaseController
 * @copyright: NanJing Anshare Tech .Com
 * @author: BoBo
 * @Date: 2020年08月10 11:45:59
 */
import { BaseService } from './base.service';
import { Body, Controller, Get, Post, Query } from '@nestjs/common';
import { ResultGenerator } from './../../core/resultBean';


@Controller()
export abstract class BaseController<T> {
  protected constructor(protected service: BaseService<T>) {

  }

  @Post('list')
  public async list(@Query('page') page: number = 0, @Query('limit') limit: number = 10) {
    return  ResultGenerator.success(this.service.find());
  }

  @Post('add')
  public async add(@Body() data: T) {
    return ResultGenerator.success(this.service.add(data),'新增成功');
  }

  @Post('update')
  public async update(@Body() data: T) {
    return ResultGenerator.success(this.service.add(data),'更新成功');
  }

  @Post('detail')
  public async detail(@Query() id: string) {
    return ResultGenerator.success(this.service.findById(id));
  }

  @Post('delete')
  public async delete(@Body() id: string) {
    return ResultGenerator.success(this.service.delete(id),'删除成功');
  }
}