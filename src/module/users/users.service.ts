import { BaseService } from 'src/module/base/base.service';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Users } from 'src/entities/Users';
import { Repository } from 'typeorm';

@Injectable()
export class UsersService extends BaseService<Users> {
  usersRepository: Repository<Users>;
  constructor(@InjectRepository(Users) usersRepository : Repository<Users>) {
    super(usersRepository);
    this.usersRepository = usersRepository;
  }

  /**
   * 用户名查询是否存在该用户
   * @param userName 用户名
   */
  findByUserName(userName:string){
    return this.usersRepository.findOne({
      userName
    })
  }
}
