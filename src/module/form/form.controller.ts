import { ResultGenerator } from './../../core/resultBean';
import { FormService } from './form.service';
import { Controller, Post, Query } from '@nestjs/common';
import { ApiHeader } from '@nestjs/swagger';
import { Form } from 'src/entities/Form';
import { BaseController } from 'src/module/base/base.controller';

@ApiHeader({
  name: '表单管理',
  description: '表单管理',
})
@Controller('form')
export class FormController extends BaseController<Form> {
  constructor(private formService: FormService) {
    super(formService);
  }

  @Post('detail')
  async getFormJson(@Query() query) {
    const form = await this.formService.repository.findOne({
      where: {
        tableName: query.tablename,
      },
    });
    return ResultGenerator.success(form);
  }

  /**
   * 获取数据库中所有表名
   */
  @Post('getTables')
  async getTables() {
    const tables = await this.formService.repository.query(
      'select table_name from information_schema.TABLES where TABLE_SCHEMA="nest"',
    );
    return ResultGenerator.success(tables);
  }

  /**
   * 获取某个表中所有字段,不包括带id的,以及isdeleted timestamp字段
   * @param query 
   */
  @Post('getKey')
  async getFormKey(@Query() query) {
    const sql =
      'select COLUMN_NAME,DATA_TYPE,COLUMN_COMMENT from information_schema.COLUMNS where table_name = "' +
      query.tablename + '"' 
      +'and table_schema = "nest" and COLUMN_NAME not like "%id%" and COLUMN_NAME not like "%isdeleted%" and COLUMN_NAME not like "%timestamp%"';
    const keys = await this.formService.repository.query(sql);
    return ResultGenerator.success(keys);
  }
}
