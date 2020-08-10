import { LocalStrategy } from './../../guards/local.strategy';
import { JwtStrategy } from './../../guards/jwt.strategy';
import { UsersModule } from '../users/users.module';
import { Module } from '@nestjs/common';
import { AuthService } from './auth.service';
import { PassportModule } from '@nestjs/passport';
import { JwtModule } from '@nestjs/jwt';
import { jwtConstants } from 'src/guards/constants';

@Module({
  imports: [
    PassportModule.register({ defaultStrategy: 'jwt' }),
    JwtModule.register({
      secret: jwtConstants.secret,
      signOptions: { expiresIn: '24h' }, // token 过期时效
    }),
    UsersModule,
  ],
  providers: [AuthService,LocalStrategy, JwtStrategy,],
  exports: [AuthService],
})
export class AuthModule {}