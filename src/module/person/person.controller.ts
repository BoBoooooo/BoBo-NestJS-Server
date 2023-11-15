import { PersonService } from './person.service'
import { Controller } from '@nestjs/common'
import { ApiHeader } from '@nestjs/swagger'
import { BaseController } from '../base/base.controller'
import { Person } from '@/entities/Person'

@ApiHeader({
  name: 'Person Module',
  description: '员工管理',
})
@Controller('Person')
export class PersonController extends BaseController<Person> {
  constructor(private personService: PersonService) {
    super(personService)
  }
}
