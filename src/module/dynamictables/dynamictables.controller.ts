import { DynamictablesService } from './dynamictables.service'
import { Controller, Post, Query } from '@nestjs/common'
import { ApiHeader } from '@nestjs/swagger'
import { Dynamictables } from '@/entities/Dynamictables'
import { BaseController } from 'src/module/base/base.controller'
import { ResultGenerator } from 'src/core/resultBean'

@ApiHeader({
  name: '表格管理',
  description: '表单管理',
})
@Controller('dynamictables')
export class DynamictablesController extends BaseController<Dynamictables> {
  constructor(private dynamictablesService: DynamictablesService) {
    super(dynamictablesService)
  }
  @Post('detail')
  async getFormJson(@Query() query) {
    const table = await this.dynamictablesService.repository.findOne({
      where: {
        tableName: query.tablename,
      },
    })
    return ResultGenerator.success(table)
  }
}
