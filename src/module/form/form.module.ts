import { FormController } from './form.controller'
import { FormService } from './form.service'
import { Module } from '@nestjs/common'
import { TypeOrmModule } from '@nestjs/typeorm'
import { Form } from 'src/entities/Form'

@Module({
  imports: [TypeOrmModule.forFeature([Form])],
  providers: [FormService],
  controllers: [FormController],
  exports: [FormService]
})
export class FormModule {}
