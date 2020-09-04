import { BaseService } from 'src/module/base/base.service';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { AdCodelistType } from 'src/entities/AdCodelistType';

@Injectable()
export class AdCodelistTypeService extends BaseService<AdCodelistType> {
  adCodelistTypeRepository: Repository<AdCodelistType>;
  constructor(@InjectRepository(AdCodelistType) adCodelistTypeRepository : Repository<AdCodelistType>) {
    super(adCodelistTypeRepository);
    this.adCodelistTypeRepository= adCodelistTypeRepository;
  }

}
