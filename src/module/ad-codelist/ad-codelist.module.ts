
import { AdCodelistController } from './ad-codelist.controller';
import { AdCodelistService } from './ad-codelist.service';
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AdCodelist } from 'src/entities/AdCodelist';

@Module({
  imports: [TypeOrmModule.forFeature([AdCodelist])],
  providers: [AdCodelistService],
  controllers:[AdCodelistController],
  exports: [AdCodelistService]
})
export class AdCodelistModule {}