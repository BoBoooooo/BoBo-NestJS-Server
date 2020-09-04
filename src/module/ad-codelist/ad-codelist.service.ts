import { BaseService } from 'src/module/base/base.service';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { AdCodelist } from 'src/entities/AdCodelist';

@Injectable()
export class AdCodelistService extends BaseService<AdCodelist> {
  adCodelistRepository: Repository<AdCodelist>;
  constructor(@InjectRepository(AdCodelist) adCodelistRepository : Repository<AdCodelist>) {
    super(adCodelistRepository);
    this.adCodelistRepository= adCodelistRepository;
  }

}
