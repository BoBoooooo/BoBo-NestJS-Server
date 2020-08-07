import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Users } from 'src/entities/Users';
import { TypeOrmCrudService } from '@nestjsx/crud-typeorm';

@Injectable()
export class UsersService extends TypeOrmCrudService<Users> {
  usersRepository: any;
  constructor(@InjectRepository(Users) usersRepository) {
    super(usersRepository);
    this.usersRepository = usersRepository;
  }

  async findAll(): Promise<Users[]> {
    return this.usersRepository.find();
  }

  async add(users: Users) {
    return this.usersRepository.insert(users);
  }
}
