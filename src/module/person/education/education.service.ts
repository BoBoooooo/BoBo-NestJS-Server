import { BaseService } from '../../base/base.service'
import { Injectable } from '@nestjs/common'
import { InjectRepository } from '@nestjs/typeorm'
import { Repository } from 'typeorm'
import { PersonEducation } from '@/entities/PersonEducation'

@Injectable()
export class EducationService extends BaseService<PersonEducation> {
  EducationRepository: Repository<PersonEducation>
  constructor(
    @InjectRepository(PersonEducation)
    EducationRepository: Repository<PersonEducation>,
  ) {
    super(EducationRepository)
    this.EducationRepository = EducationRepository
  }
}
