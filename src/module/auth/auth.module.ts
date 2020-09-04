import { RoleModule } from './../role/role.module';
import { UsersService } from './../users/users.service';
import { JwtStrategy } from './../../guards/jwt.strategy';
import { UsersModule } from '../users/users.module';
import { Module, Global } from '@nestjs/common';
import { AuthService } from './auth.service';
import { PassportModule } from '@nestjs/passport';
import { JwtModule } from '@nestjs/jwt';
import { jwtConstants } from 'src/config/constants';
import { DeptModule } from '../dept/dept.module';

@Global()
@Module({
  imports: [
    PassportModule.register({ defaultStrategy: 'jwt' }),
    JwtModule.register({
      secret: jwtConstants.secret,
      signOptions: { expiresIn: jwtConstants.time }, // token 过期时效
    }),
    UsersModule,
    DeptModule,
    RoleModule
  ],
  providers: [AuthService, JwtStrategy],
  exports: [AuthService],
})
export class AuthModule {}