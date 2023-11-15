import { BaseService } from 'src/module/base/base.service'
import { Injectable } from '@nestjs/common'
import { InjectRepository } from '@nestjs/typeorm'
import { Repository } from 'typeorm'
import { AdCodelist } from '@/entities/AdCodelist'

@Injectable()
export class AdCodelistService extends BaseService<AdCodelist> {
  adCodelistRepository: Repository<AdCodelist>
  constructor(
    @InjectRepository(AdCodelist) adCodelistRepository: Repository<AdCodelist>,
  ) {
    super(adCodelistRepository)
    this.adCodelistRepository = adCodelistRepository
  }

  async find(body) {
    const qb = this.adCodelistRepository
      .createQueryBuilder('code')
      .innerJoin('ad_codelist_type', 'type', 'type.id = code.codeType')
    this.splitSql(qb, body)
    qb.select('code.*')
      .addSelect('type.typeName', 'typeName')
      .addOrderBy('code.codeOrder', 'ASC') // 此处返回字段为 type_typeName

    const list = await qb.getRawMany()
    const total = await qb.getCount()
    return {
      list,
      total,
    }
  }
}
