import { ResultGenerator } from './../../core/resultBean';
import { DeptService } from './../dept/dept.service';
import { RoleService } from './../role/role.service';
import { Users } from './../../entities/Users';
import { UsersService } from '../users/users.service';
import { Injectable } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
const md5 = require('md5-node');
@Injectable()
export class AuthService {
  user;
  constructor(
    private readonly usersService: UsersService,
    private readonly roleService: RoleService,
    private readonly deptService: DeptService,
    private readonly jwtService: JwtService,
  ) {}

  // 校验用户信息
  async validateUser(username: string, password: string): Promise<any> {
    const user = await this.usersService.findByUserName(username);
    if (user) {
      if (md5(password).toUpperCase() === user.password) {
        // 密码正确
        return {
          code: 200,
          user,
        };
      } else {
        // 密码错误
        return {
          code: 800,
          user: null,
        };
      }
    }
    // 查无此人
    return {
      code: 801,
      user: null,
    };
  }

  // 签发jwt
  async certificate(user: Users) {
    // 查找当前用户角色/部门
    const role = await this.roleService.findById(user.roleId);
    const dept = await this.deptService.findById(user.deptId);

    const payload = {
      userName: user.userName,
      userID: user.id,
      deptID: user.deptId,
      realName: user.realName,
      roleID: user.roleId,
      roleName: role.roleName,
      deptName: dept.name,
      roleAuthName: role.roleAuthName,
    };
    const token = this.jwtService.sign(payload);
    this.user = {
      ...payload,
      photo: user.photo,
    };
    return token;
  }

  getUser() {
    return this.user;
  }
}
