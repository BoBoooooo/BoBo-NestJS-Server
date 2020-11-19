import { DynamictablesController } from './dynamictables.controller'
import { DynamictablesService } from './dynamictables.service'
import { Module } from '@nestjs/common'
import { TypeOrmModule } from '@nestjs/typeorm'
import { Dynamictables } from 'src/entities/Dynamictables'

@Module({
  imports: [TypeOrmModule.forFeature([Dynamictables])],
  providers: [DynamictablesService],
  controllers: [DynamictablesController],
  exports: [DynamictablesService]
})
export class DynamictablesModule {}
