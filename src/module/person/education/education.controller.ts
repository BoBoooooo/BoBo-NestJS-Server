import { EducationService } from './education.service'
import { Controller } from '@nestjs/common'
import { ApiHeader } from '@nestjs/swagger'
import { BaseController } from '../../base/base.controller'
import { PersonEducation } from '@/entities/PersonEducation'

@ApiHeader({
  name: 'Education Module',
  description: '教育经历模块',
})
@Controller('Education')
export class EducationController extends BaseController<PersonEducation> {
  constructor(private educationService: EducationService) {
    super(educationService)
  }
}
