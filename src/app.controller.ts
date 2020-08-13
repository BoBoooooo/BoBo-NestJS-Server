import { Controller, Get } from '@nestjs/common';
import { AppService } from './app.service';
import { NoAuth } from './guards/customize';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @NoAuth()
  @Get()
  getHello(): string {
    return this.appService.getHello();
  }
}
