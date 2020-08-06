import { UsersService } from './users.service';
import { UsersController } from './users.controller';
import { Users } from 'src/entities/Users';
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';

@Module({
  imports: [TypeOrmModule.forFeature([Users])],
  // controllers: [UsersController],
  providers: [UsersService],
  exports: [UsersService]
})
export class UsersModule {}