import { BaseService } from 'src/module/base/base.service';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Role } from 'src/entities/Role';

@Injectable()
export class RoleService extends BaseService<Role> {
  roleRepository: Repository<Role>;
  constructor(@InjectRepository(Role) roleRepository : Repository<Role>) {
    super(roleRepository);
    this.roleRepository = roleRepository;
  }

}
