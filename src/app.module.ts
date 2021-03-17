import { EducationModule } from './module/person/education/education.module'
import { ResumeModule } from './module/person/resume/resume.module'
import { PersonModule } from './module/person/person.module'
import { DynamictablesModule } from './module/dynamictables/dynamictables.module'
import { FormModule } from './module/form/form.module'
import { AdCodelistModule } from './module/ad-codelist/ad-codelist.module'
import { RoleModule } from './module/role/role.module'
import { Module } from '@nestjs/common'
import { AppController } from './app.controller'
import { AppService } from './app.service'
import { UsersModule } from './module/users/users.module'
import { AuthModule } from './module/auth/auth.module'
import { Connection } from 'typeorm'
import { APP_GUARD } from '@nestjs/core'
import { RoleAuthGuard } from './guards/auth-guards'
import { ServeStaticModule } from '@nestjs/serve-static'
import { join } from 'path'
import { TypeOrmModule } from '@nestjs/typeorm'
import { UploadModule } from './module/upload/upload.module'
import { EventsModule } from './events/events.module'
import { ConfigModule, ConfigService } from '@nestjs/config'
import customConfig from './config'
import { AdCodelistTypeModule } from './module/ad-codelist-type/ad-codelist-type.module'

@Module({
  imports: [
    ConfigModule.forRoot({
      isGlobal: true, // 作用于全局
      load: [customConfig] // 加载自定义配置项
    }),
    TypeOrmModule.forRootAsync({
      imports: [ConfigModule], // 数据库配置项依赖于ConfigModule，需在此引入
      useFactory: (configService: ConfigService) =>
        configService.get('DATABASE_CONFIG'),
      inject: [ConfigService] // 记得注入服务，不然useFactory函数中获取不到ConfigService
    }),
    ServeStaticModule.forRoot({
      rootPath: join(__dirname, '..', 'public'),
      exclude: ['/api*']
    }),
    EventsModule,
    AuthModule,
    UsersModule,
    UploadModule,
    RoleModule,
    PersonModule,
    AdCodelistModule,
    AdCodelistTypeModule,
    FormModule,
    DynamictablesModule,
    ResumeModule,
    EducationModule
  ],
  controllers: [AppController],
  providers: [
    AppService,
    {
      provide: APP_GUARD,
      useClass: RoleAuthGuard
    }
  ]
})
export class AppModule {
  constructor(private readonly connection: Connection) {}
}
