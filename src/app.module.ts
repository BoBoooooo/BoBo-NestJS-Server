import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UsersModule } from './module/users/users.module';
import { AuthModule } from './module/auth/auth.module';
import { UsersController } from './module/users/users.controller';
import { Connection } from 'typeorm';
import { APP_GUARD } from '@nestjs/core';
import { RoleAuthGuard } from './guards/auth-guards';
import { PersonModule } from './module/person/person.module';
import { ServeStaticModule } from '@nestjs/serve-static';
import { join } from 'path';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UploadModule } from './module/upload/upload.module';
@Module({
  imports: [
    TypeOrmModule.forRoot({
      type: 'mysql',
      host: 'localhost',
      port: 3306,
      username: 'root',
      password: 'Anshare.cc',
      database: 'sw3k_tm',
      entities: [__dirname + '/entities/*{.ts,.js}'],
      synchronize: true,
    }),
    ServeStaticModule.forRoot({
      rootPath: join(__dirname, '..', 'public'),
      exclude: ['/api*'],
    }),
    UsersModule,
    AuthModule,
    PersonModule,
    UploadModule
  ],
  controllers: [AppController, UsersController],
  providers: [
    AppService,
    {
      provide: APP_GUARD,
      useClass: RoleAuthGuard,
    },
  ],
})
export class AppModule {
  constructor(private readonly connection: Connection) {}
}
