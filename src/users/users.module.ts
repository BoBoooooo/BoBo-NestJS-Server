import { UsersService } from './users.service';
import { UsersController } from './users.controller';
import { Users } from './users.entity';
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';

@Module({
  imports: [TypeOrmModule.forFeature([Users])],
  // controllers: [UsersController],
  providers: [UsersService],
  exports: [UsersService]
})
export class UsersModule {}