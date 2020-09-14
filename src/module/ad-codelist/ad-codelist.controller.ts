import { AdCodelistType } from './../../entities/AdCodelistType';
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
    // const code = await this.adCodelistService.repository
    //   .createQueryBuilder('code')
    //   .leftJoinAndSelect(AdCodelistType, 'type', 'type.id = code.codeType')
    //   .select('code.*')
    //   .addSelect('type.codeName', 'typeName')
    //   .getRawMany();
    // const code = await this.adCodelistService.repository.query('select t.*,c.codeName as typeName from ad_codelist t join ad_codelist_type c on (t.codeType = c.id)')
    return ResultGenerator.success(await this.adCodelistService.find(body));
  }
}
