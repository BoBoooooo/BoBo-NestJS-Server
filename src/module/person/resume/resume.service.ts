import { BaseService } from 'src/module/base/base.service'
import { Injectable } from '@nestjs/common'
import { InjectRepository } from '@nestjs/typeorm'
import { Repository } from 'typeorm'
import { PersonResume } from 'src/entities/PersonResume'

@Injectable()
export class ResumeService extends BaseService<PersonResume> {
  ResumeRepository: Repository<PersonResume>
  constructor(
    @InjectRepository(PersonResume) ResumeRepository: Repository<PersonResume>
  ) {
    super(ResumeRepository)
    this.ResumeRepository = ResumeRepository
  }
}
