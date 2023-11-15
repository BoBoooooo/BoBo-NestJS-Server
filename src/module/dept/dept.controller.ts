import { DeptService } from './dept.service'
import { Controller } from '@nestjs/common'
import { ApiHeader } from '@nestjs/swagger'
import { BaseController } from '../base/base.controller'
import { Dept } from '@/entities/Dept'

@ApiHeader({
  name: 'dept Module',
  description: '部门设置',
})
@Controller('dept')
export class DeptController extends BaseController<Dept> {
  constructor(private deptService: DeptService) {
    super(deptService)
  }
}
