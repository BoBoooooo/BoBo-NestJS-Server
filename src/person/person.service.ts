import { Person } from './../entities/Person';
import { Injectable } from '@nestjs/common';
import { BaseService } from 'src/base/base.service';
import { Repository } from 'typeorm';
import { InjectRepository } from '@nestjs/typeorm';

@Injectable()
export class PersonService extends BaseService<Person> {
  constructor(@InjectRepository(Person) public repository: Repository<Person>) {
    super(repository);
  }
}
