import { ResumeController } from './resume.controller'
import { ResumeService } from './resume.service'
import { Module } from '@nestjs/common'
import { TypeOrmModule } from '@nestjs/typeorm'
import { PersonResume } from '@/entities/PersonResume'

@Module({
  imports: [TypeOrmModule.forFeature([PersonResume])],
  providers: [ResumeService],
  controllers: [ResumeController],
  exports: [ResumeService],
})
export class ResumeModule {}
