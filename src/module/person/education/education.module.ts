import { EducationController } from './education.controller'
import { EducationService } from './education.service'
import { Module } from '@nestjs/common'
import { TypeOrmModule } from '@nestjs/typeorm'
import { PersonEducation } from 'src/entities/PersonEducation'

@Module({
  imports: [TypeOrmModule.forFeature([PersonEducation])],
  providers: [EducationService],
  controllers: [EducationController],
  exports: [EducationService]
})
export class EducationModule {}
