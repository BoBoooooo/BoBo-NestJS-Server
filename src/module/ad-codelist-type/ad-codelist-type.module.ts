
import { AdCodelistController } from './ad-codelist-type.controller';
import { AdCodelistTypeService } from './ad-codelist-type.service';
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AdCodelistType } from 'src/entities/AdCodelistType';

@Module({
  imports: [TypeOrmModule.forFeature([AdCodelistType])],
  providers: [AdCodelistTypeService],
  controllers:[AdCodelistController],
  exports: [AdCodelistTypeService]
})
export class AdCodelistTypeModule {}