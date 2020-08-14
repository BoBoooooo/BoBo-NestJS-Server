import {
  SubscribeMessage,
  WebSocketGateway,
  WsResponse,
  WebSocketServer,
} from '@nestjs/websockets';
import { Observable, of } from 'rxjs';

const l = console.log;
let num = 0;


@WebSocketGateway(8080)
export class EventsGateway {
  @WebSocketServer() server;
  @SubscribeMessage('message')
  onEvent(client: any, payload: any): Observable<WsResponse<any>> {
    this.server.emit('message', new Date().toLocaleString());  // io.emit('resmsg', payload)
    num++;
    console.log(`有一位用户链接!> ${num}`);
    client.on('disconnect', () => {
      num--;
      console.log(`有人离开了...> ${num}`);
    });
    return of({ event: 'message', data: '233' });
  }
}
