import {
  SubscribeMessage,
  WebSocketGateway,
  WsResponse,
  WebSocketServer,
  OnGatewayConnection,
  OnGatewayInit,
  OnGatewayDisconnect,
} from '@nestjs/websockets';
import { Observable, of } from 'rxjs';

const l = console.log;
let num = 0;

@WebSocketGateway(8080)
export class EventsGateway
  implements OnGatewayInit, OnGatewayConnection, OnGatewayDisconnect {
  @WebSocketServer() server;

  // 初始化
  afterInit(server) {}

  // 连接
  handleConnection(client) {}

  // 断开连接
  handleDisconnect(client) {}

  // 订阅消息事件
  @SubscribeMessage('message')
  handleEvent(client: any, payload: any): Observable<WsResponse<any>> {
    // 通知当前client message
    this.server.emit('message', new Date().toLocaleString()); 
    num++;
    console.log(`有一位用户链接!> ${num}`);
    client.on('disconnect', () => {
      num--;
      console.log(`有人离开了...> ${num}`);
    });

    return of({ event: 'message', data: '233' });
  }
}
