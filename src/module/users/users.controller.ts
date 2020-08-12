import { NoAuth } from 'src/guards/customize';
import { AuthService } from '../auth/auth.service';
import { UsersService } from './users.service';
import {
  Controller,
  Post,
  Body,
} from '@nestjs/common';
import { ApiHeader } from '@nestjs/swagger';
import { Users } from 'src/entities/Users';
import { BaseController } from '../base/base.controller';


@ApiHeader({
  name: 'users Module',
  description: '用户设置',
})
@Controller('users')
export class UsersController extends BaseController<Users> {
  constructor(
    private usersService: UsersService,
    private readonly authService: AuthService,
  ) {
    super(usersService)
  }

  @NoAuth()
  @Post('login')
  async login(@Body() loginParmas: any) {
    console.log('JWT验证 - Step 1: 用户请求登录');
    const authResult = await this.authService.validateUser(
      loginParmas.username,
      loginParmas.password,
    );
    switch (authResult.code) {
      case 200:
        return this.authService.certificate(authResult.user);
      case 600:
        return {
          code: 600,
          msg: `账号或密码不正确`,
        };
      default:
        return {
          code: 608,
          msg: `查无此人`,
        };
    }
  }
}
