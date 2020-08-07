import { UsersService } from './users.service';
import { Controller, Post, Body, UseGuards } from '@nestjs/common';
import { ApiHeader } from '@nestjs/swagger';
import { AuthService } from 'src/logical/auth/auth.service';
import { AuthGuard } from '@nestjs/passport';
import { Users } from 'src/entities/Users';
import { Crud, CrudController } from '@nestjsx/crud';

@ApiHeader({
  name: 'users Module',
  description: '用户设置',
})
@Crud({
  model: {
    type: Users,
  },
})
@Controller('users')
export class UsersController implements CrudController<Users> {
  constructor(
    public service: UsersService,
    private usersService: UsersService,
    private readonly authService: AuthService,
  ) {}

  @Post('list')
  async findAll() {
    return await this.usersService.findAll();
  }

  // JWT验证 - Step 1: 用户请求登录
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

  @UseGuards(AuthGuard('jwt')) // 使用 'JWT' 进行验证
  @Post('add')
  async add(@Body() body: any) {
    return await this.usersService.add(body);
  }
}
