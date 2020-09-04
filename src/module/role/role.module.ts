
import { AuthModule } from '../auth/auth.module';
import { RoleController } from './role.controller';
import { RoleService } from './role.service';
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Role } from 'src/entities/Role';

@Module({
  imports: [TypeOrmModule.forFeature([Role])],
  providers: [RoleService],
  controllers:[RoleController],
  exports: [RoleService]
})
export class RoleModule {}