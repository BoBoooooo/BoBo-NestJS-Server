
import { AuthModule } from '../auth/auth.module';
import { DeptController } from './dept.controller';
import { DeptService } from './dept.service';
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Dept } from 'src/entities/Dept';

@Module({
  imports: [TypeOrmModule.forFeature([Dept])],
  providers: [DeptService],
  controllers:[DeptController],
  exports: [DeptService]
})
export class DeptModule {}