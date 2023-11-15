import { DeptController } from './dept.controller'
import { DeptService } from './dept.service'
import { Module } from '@nestjs/common'
import { TypeOrmModule } from '@nestjs/typeorm'
import { Dept } from '@/entities/Dept'

@Module({
  imports: [TypeOrmModule.forFeature([Dept])],
  providers: [DeptService],
  controllers: [DeptController],
  exports: [DeptService],
})
export class DeptModule {}
