/*
 * @file: BaseController
 * @copyright: NanJing Anshare Tech .Com
 * @author: BoBo
 * @Date: 2020年08月10 11:45:59
 */
import { BaseService } from './base.service';
import { Body, Controller, Post, Query } from '@nestjs/common';
import { ResultGenerator } from './../../core/resultBean';


@Controller()
export abstract class BaseController<T> {
  protected constructor(protected service: BaseService<T>) {

  }

  @Post('list')
  public async list(@Body() body) {
    return  ResultGenerator.success(await this.service.find(body));
  }

  @Post('add')
  public async add(@Body() data: T) {
    return ResultGenerator.success(await this.service.add(data),'新增成功');
  }

  @Post('update')
  public async update(@Body() data: T) {
    return ResultGenerator.success(await this.service.update(data),'更新成功');
  }

  @Post('detail')
  public async detail(@Query() id: string) {
    return ResultGenerator.success(await this.service.findById(id));
  }

  @Post('delete')
  public async delete(@Query() id: string) {
    return ResultGenerator.success(await this.service.delete(id),'删除成功');
  }


  /**
   * 批量删除接口
   * @param id 
   */
  @Post('deleteByIds')
  public async deleteByIds(@Body() id: string[]) {
    return ResultGenerator.success(await this.service.deleteByIds(id),'删除成功');
  }

  /**
   * tree 接口
   */
  @Post('tree')
  public async tree(){
    return ResultGenerator.success(await this.service.tree())
  }
}