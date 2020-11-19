import { Controller, Get, Redirect } from '@nestjs/common'
import { AppService } from './app.service'
import { NoAuth } from './guards/customize'

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @NoAuth()
  @Get()
  @Redirect('/public', 301)
  root(): string {
    return ''
  }
}
