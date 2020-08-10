import { PersonService } from './person.service';
import { Controller, Post } from '@nestjs/common';

@Controller('person')
export class PersonController {
  constructor(protected readonly service: PersonService) {
  }

  @Post('list')
  list(){
    return this.service.find();
  }
}