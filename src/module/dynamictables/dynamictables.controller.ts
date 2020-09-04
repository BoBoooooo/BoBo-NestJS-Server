import { DynamictablesService } from './dynamictables.service';
import { Controller, } from '@nestjs/common';
import { ApiHeader } from '@nestjs/swagger';
import { Dynamictables } from 'src/entities/Dynamictables';
import { BaseController } from 'src/module/base/base.controller';

@ApiHeader({
  name: '表格管理',
  description: '表单管理',
})
@Controller('dynamictables')
export class DynamictablesController extends BaseController<Dynamictables> {
  constructor(
    private DynamictablesService: DynamictablesService,
  ) {
    super(DynamictablesService);
  }
}
