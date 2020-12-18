import { PersonController } from './person.controller'
import { PersonService } from './person.service'
import { Module } from '@nestjs/common'
import { TypeOrmModule } from '@nestjs/typeorm'
import { Person } from 'src/entities/Person'

@Module({
  imports: [TypeOrmModule.forFeature([Person])],
  providers: [PersonService],
  controllers: [PersonController],
  exports: [PersonService]
})
export class PersonModule {}
