import { ResultGenerator } from './../../core/resultBean';
import { AdCodelistService } from './ad-codelist.service';
import { Controller, Post, Body } from '@nestjs/common';
import { ApiHeader } from '@nestjs/swagger';
import { AdCodelist } from 'src/entities/AdCodelist';
import { BaseController } from 'src/module/base/base.controller';
import { NoAuth } from 'src/guards/customize';

@ApiHeader({
  name: '字典设置',
  description: '字典设置',
})
@Controller('ad_codelist')
export class AdCodelistController extends BaseController<AdCodelist> {
  constructor(private adCodelistService: AdCodelistService) {
    super(adCodelistService);
  }

  @NoAuth()
  @Post('list')
  public async list(@Body() body) {
    return ResultGenerator.success(await this.adCodelistService.find(body));
  }
}
