import { BaseService } from 'src/module/base/base.service';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Form } from 'src/entities/Form';

@Injectable()
export class FormService extends BaseService<Form> {
  FormRepository: Repository<Form>;
  constructor(@InjectRepository(Form) FormRepository : Repository<Form>) {
    super(FormRepository);
    this.FormRepository= FormRepository;
  }

}
