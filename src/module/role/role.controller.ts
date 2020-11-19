import { RoleService } from './role.service'
import { Controller } from '@nestjs/common'
import { ApiHeader } from '@nestjs/swagger'
import { BaseController } from '../base/base.controller'
import { Role } from 'src/entities/Role'

@ApiHeader({
  name: 'role Module',
  description: '角色设置'
})
@Controller('role')
export class RoleController extends BaseController<Role> {
  constructor(private roleService: RoleService) {
    super(roleService)
  }
}
