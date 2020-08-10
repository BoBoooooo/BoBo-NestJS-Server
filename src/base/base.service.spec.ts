import { Test, TestingModule } from '@nestjs/testing';
import { BaseService } from './base.service';
import { BaseEntity } from 'typeorm';

describe('BaseService', () => {
  let service: BaseService<BaseEntity>;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [BaseService],
    }).compile();

    service = module.get<BaseService<BaseEntity>>(BaseService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
