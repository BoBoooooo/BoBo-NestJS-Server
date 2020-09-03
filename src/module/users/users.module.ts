import { AuthModule } from './../auth/auth.module';
import { AuthService } from './../auth/auth.service';
import { UsersController } from './users.controller';
import { UsersService } from './users.service';
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Users } from 'src/entities/Users';

@Module({
  imports: [TypeOrmModule.forFeature([Users])],
  providers: [UsersService],
  controllers:[UsersController],
  exports: [UsersService]
})
export class UsersModule {}