import { BaseService } from 'src/module/base/base.service'
import { Injectable } from '@nestjs/common'
import { InjectRepository } from '@nestjs/typeorm'
import { Repository } from 'typeorm'
import { Person } from 'src/entities/Person'

@Injectable()
export class PersonService extends BaseService<Person> {
  PersonRepository: Repository<Person>
  constructor(@InjectRepository(Person) PersonRepository: Repository<Person>) {
    super(PersonRepository)
    this.PersonRepository = PersonRepository
  }
}
