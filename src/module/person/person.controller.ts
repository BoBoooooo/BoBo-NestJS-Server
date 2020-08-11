import { PersonService } from './person.service';
import { Controller, Post, Body } from '@nestjs/common';

@Controller('person')
export class PersonController {
  constructor(protected readonly service: PersonService) {
  }

  @Post('list')
  list(@Body() body){
    return this.service.find(body);
  }
}