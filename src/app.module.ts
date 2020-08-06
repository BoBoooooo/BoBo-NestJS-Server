import { Module, NestModule, MiddlewareConsumer } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UsersModule } from './users/users.module';
import { TypeOrmModule } from '@nestjs/typeorm'; 
import { AuthModule } from './logical/auth/auth.module';
import { UsersController } from './users/users.controller';
import { logger } from './middleware/logger.middleware';
import { Connection } from 'typeorm';


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
    UsersModule, AuthModule
  ],
  controllers: [AppController,UsersController],
  providers: [AppService],
})

export class AppModule {
  constructor(private readonly connection: Connection) {}  
}
