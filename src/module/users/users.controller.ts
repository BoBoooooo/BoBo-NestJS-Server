import { EventsGateway } from './../../events/events.gateway';
import { NoAuth } from 'src/guards/customize';
import { AuthService } from '../auth/auth.service';
import { UsersService } from './users.service';
import {
  Controller,
  Post,
  Body,
  Get,
  Query,
} from '@nestjs/common';
import { ApiHeader } from '@nestjs/swagger';
import { BaseController } from '../base/base.controller';
import { WebSocketServer } from '@nestjs/websockets';
import { Users } from 'src/entities/Users';

@ApiHeader({
  name: 'users Module',
  description: '用户设置',
})
@Controller('users')
export class UsersController extends BaseController<Users> {

  constructor(
    private usersService: UsersService,
    private readonly authService: AuthService,
    private readonly eventsGateway:EventsGateway
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

  /**
   * socket.io 向客户端发送消息
   */
  @NoAuth()
  @Get('emit')
  async emit(@Query() params){
    this.eventsGateway.server.emit('message', JSON.stringify(params));  
    return 'emit'
  }
}
