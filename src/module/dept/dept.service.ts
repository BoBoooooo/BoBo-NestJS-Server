import { BaseService } from 'src/module/base/base.service';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Dept } from 'src/entities/Dept';

@Injectable()
export class DeptService extends BaseService<Dept> {
  deptRepository: Repository<Dept>;
  constructor(@InjectRepository(Dept) deptRepository : Repository<Dept>) {
    super(deptRepository);
    this.deptRepository = deptRepository;
  }

}
