import { ResumeService } from './resume.service'
import { Controller } from '@nestjs/common'
import { ApiHeader } from '@nestjs/swagger'
import { BaseController } from '../../base/base.controller'
import { PersonResume } from '@/entities/PersonResume'

@ApiHeader({
  name: 'Resume Module',
  description: '员工工作履历',
})
@Controller('Resume')
export class ResumeController extends BaseController<PersonResume> {
  constructor(private resumeService: ResumeService) {
    super(resumeService)
  }
}
