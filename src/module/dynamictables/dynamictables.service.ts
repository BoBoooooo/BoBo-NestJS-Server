import { BaseService } from 'src/module/base/base.service'
import { Injectable } from '@nestjs/common'
import { InjectRepository } from '@nestjs/typeorm'
import { Repository } from 'typeorm'
import { Dynamictables } from 'src/entities/Dynamictables'

@Injectable()
export class DynamictablesService extends BaseService<Dynamictables> {
  DynamictablesRepository: Repository<Dynamictables>
  constructor(
    @InjectRepository(Dynamictables)
    DynamictablesRepository: Repository<Dynamictables>
  ) {
    super(DynamictablesRepository)
    this.DynamictablesRepository = DynamictablesRepository
  }
}
