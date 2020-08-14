import { JwtStrategy } from './../../guards/jwt.strategy';
import { UsersModule } from '../users/users.module';
import { Module } from '@nestjs/common';
import { AuthService } from './auth.service';
import { PassportModule } from '@nestjs/passport';
import { JwtModule } from '@nestjs/jwt';
import { jwtConstants } from 'src/config/constants';

@Module({
  imports: [
    PassportModule.register({ defaultStrategy: 'jwt' }),
    JwtModule.register({
      secret: jwtConstants.secret,
      signOptions: { expiresIn: jwtConstants.time }, // token 过期时效
    }),
    UsersModule,
  ],
  providers: [AuthService, JwtStrategy,],
  exports: [AuthService],
})
export class AuthModule {}