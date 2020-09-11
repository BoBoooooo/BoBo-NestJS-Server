import { EventsGateway } from './../../events/events.gateway';
import { NoAuth } from 'src/guards/customize';
import { AuthService } from '../auth/auth.service';
import { UsersService } from './users.service';
import { Controller, Post, Body, Get, Query, Req } from '@nestjs/common';
import { ApiHeader } from '@nestjs/swagger';
import { BaseController } from '../base/base.controller';
import { Users } from 'src/entities/Users';
import { ResultGenerator } from 'src/core/resultBean';

@ApiHeader({
  name: 'users Module',
  description: '用户设置',
})
@Controller('users')
export class UsersController extends BaseController<Users> {
  constructor(
    private usersService: UsersService,
    private readonly authService: AuthService,
    private readonly eventsGateway: EventsGateway,
  ) {
    super(usersService);
  }

  @NoAuth()
  @Post('login')
  async login(@Body() loginParmas: any) {
    const authResult = await this.authService.validateUser(
      loginParmas.username,
      loginParmas.password,
    );
    switch (authResult.code) {
      case 200:
        const token = await this.authService.certificate(authResult.user);
        return ResultGenerator.success({ token }, '登录成功');
      case 800:
        return ResultGenerator.fail(800, '密码错误');
      case 801:
        return ResultGenerator.fail(801, '用户名不存在');
    }
  }

  /**
   * 获取用户身份信息
   */
  @Post('userinfo')
  async userInfo(@Req() req) {
    // decoded token 信息
    const user = this.usersService.getUserInfoFromToken(req.headers.authorization)
    return ResultGenerator.success(user);
  }

  /**
   * socket.io 向客户端发送消息
   */
  @NoAuth()
  @Get('emit')
  async emit(@Query() params) {
    this.eventsGateway.server.emit('message', JSON.stringify(params));
    return 'emit';
  }
}
