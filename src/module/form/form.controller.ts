import { FormService } from './form.service';
import { Controller, } from '@nestjs/common';
import { ApiHeader } from '@nestjs/swagger';
import { Form } from 'src/entities/Form';
import { BaseController } from 'src/module/base/base.controller';

@ApiHeader({
  name: '表单管理',
  description: '表单管理',
})
@Controller('form')
export class FormController extends BaseController<Form> {
  constructor(
    private FormService: FormService,
  ) {
    super(FormService);
  }
}
