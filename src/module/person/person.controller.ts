import { PersonService } from './person.service';
import { Controller, Post, Body } from '@nestjs/common';
import { BaseController } from '../base/base.controller';
import { Person } from 'src/entities/Person';

@Controller('person')
export class PersonController extends BaseController<Person>{
  constructor(protected readonly service: PersonService) {
    super(service)
  }
}