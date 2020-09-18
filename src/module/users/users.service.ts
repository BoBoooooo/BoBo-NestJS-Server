import { BaseService } from 'src/module/base/base.service';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Users } from 'src/entities/Users';

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

  /**
   * 用户名查询是否存在该用户
   * @param userName 用户名
   */
  async getUserInfo(userName:string){
     const user = await this.usersRepository.createQueryBuilder("users")
    .innerJoin("users.deptid", "dept")
    .where("users.userName = :userName", { userName })
    .getOne();
    return user;
  }

  async find(body) {
    const qb = this.usersRepository
      .createQueryBuilder('users')
      .innerJoin('dept', 'dept', 'dept.id = users.deptid')
      .innerJoin('role', 'role', 'role.id = users.roleid')
    this.splitSql(qb, body);
    qb.select('users.*')
      .addSelect('dept.name','deptName')  // 此处不定义alias 返回字段为 -> dept_name
      .addSelect('role.roleName','roleName') // 同理返回-> role_roleName

    const list = await qb.getRawMany();
    const total = await qb.getCount();
    return {
      list,
      total,
    };
  }



}
