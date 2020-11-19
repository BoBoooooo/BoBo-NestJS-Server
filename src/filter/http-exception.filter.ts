/*
 * @file: 全局http异常拦截
 * @copyright: NanJing Anshare Tech .Com
 * @author: BoBo
 * @Date: 2020年08月10 15:51:14
 */
import {
  ExceptionFilter,
  ArgumentsHost,
  Catch,
  HttpException
} from '@nestjs/common'
import { ApiException } from './api-exception.filter'

@Catch(HttpException)
export class HttpExceptionFilter implements ExceptionFilter {
  catch(exception, host: ArgumentsHost) {
    const ctx = host.switchToHttp()
    const response = ctx.getResponse()
    const status = exception.getStatus()
    if (exception instanceof ApiException) {
      response.status(status).json({
        code: exception.getErrorCode(),
        message: exception.getErrorMessage(),
        data: null
      })
    } else {
      response.status(status).json({
        code: status,
        data: new Date().toLocaleDateString(),
        message: exception.message
      })
    }
  }
}
