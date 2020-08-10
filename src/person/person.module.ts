import { Person } from './../entities/Person';
import { PersonController } from './person.controller';
import { PersonService } from './person.service';
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';

@Module({
  imports: [TypeOrmModule.forFeature([Person])],
  providers:[PersonService],
  controllers:[PersonController]
})
export class PersonModule {}
