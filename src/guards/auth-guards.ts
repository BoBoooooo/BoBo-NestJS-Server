/*
 * @file: 全局jwt guard
          接口上添加@NoAuth() 则跳过校验
 * @copyright: BoBo
 * @author: BoBo
 * @Date: 2020年08月07 14:53:52
 */
import { Injectable, CanActivate, ExecutionContext } from '@nestjs/common'
import { Observable } from 'rxjs'
import { Reflector } from '@nestjs/core'
import { AuthGuard, IAuthGuard } from '@nestjs/passport'

@Injectable()
export class RoleAuthGuard implements CanActivate {
  constructor(private readonly reflector: Reflector) {}
  canActivate(
    context: ExecutionContext
  ): boolean | Promise<boolean> | Observable<boolean> {
    // 在这里取metadata中的no-auth，得到的会是一个bool
    const noAuth = this.reflector.get<boolean>('no-auth', context.getHandler())
    const guard = RoleAuthGuard.getAuthGuard(noAuth)
    return typeof guard === 'boolean' ? guard : guard.canActivate(context) //执行所选策略Guard的canActivate方法
  }

  // @NoAuth() 则表示直接放行不校验token
  private static getAuthGuard(noAuth: boolean): IAuthGuard | boolean {
    if (noAuth) {
      return true
    } else {
      return new (AuthGuard('jwt'))()
    }
  }
}
