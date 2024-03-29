/*
 * @file: main.ts
 * @copyright: BoBo
 * @author: BoBo
 * @Date: 2020年08月06 16:10:49
 */
import { NestFactory } from '@nestjs/core'
import { NestExpressApplication } from '@nestjs/platform-express'
import { SwaggerModule, DocumentBuilder } from '@nestjs/swagger'
import { AppModule } from './app.module'
import { logger } from './middleware/logger.middleware'
import * as express from 'express'
import { TransformInterceptor } from './interceptor/transform.interceptor'
import { AllExceptionsFilter } from './filter/any-exception.filter'
import * as compression from 'compression'
import { HttpExceptionFilter } from './filter/http-exception.filter'
import { join } from 'path'

async function bootstrap() {
  const app = await NestFactory.create<NestExpressApplication>(AppModule, {
    cors: true,
  })
  app.enableCors({
    origin: true,
  })
  // helmet安全
  // app.use(helmet());
  const options = new DocumentBuilder()
    .setTitle('Nestjs Swagger')
    .setDescription('API description')
    .setVersion('1.0')
    .addTag('cats')
    .build()
  const document = SwaggerModule.createDocument(app, options)
  SwaggerModule.setup('api', app, document)
  app.use(express.json()) // For parsing application/json
  app.use(express.urlencoded({ extended: true })) // For parsing application/x-www-form-urlencoded
  // 监听所有的请求路由，并打印日志
  app.use(logger)
  // 使用全局拦截器打印出参
  app.useGlobalInterceptors(new TransformInterceptor())
  // 全局异常
  app.useGlobalFilters(new AllExceptionsFilter())
  // 开启gzip
  app.use(compression())

  app.useGlobalFilters(new HttpExceptionFilter())

  // 配置静态资源
  app.useStaticAssets(join(__dirname, '../public', '/'), {
    prefix: '/',
    setHeaders: (res) => {
      res.set('Cache-Control', 'max-age=2592000')
    },
  })

  await app.listen(process.env.PORT || 7788)
}
bootstrap()
