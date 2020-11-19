import { AdCodelistTypeService } from './ad-codelist-type.service'
import { Controller } from '@nestjs/common'
import { ApiHeader } from '@nestjs/swagger'
import { AdCodelistType } from 'src/entities/AdCodelistType'
import { BaseController } from 'src/module/base/base.controller'

@ApiHeader({
  name: '字典类型设置',
  description: '字典类型设置'
})
@Controller('ad_codelist_type')
export class AdCodelistController extends BaseController<AdCodelistType> {
  constructor(private adCodelistTypeService: AdCodelistTypeService) {
    super(adCodelistTypeService)
  }
}
