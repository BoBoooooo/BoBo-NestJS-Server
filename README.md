# NestJS-API-Server

一套轻量级 nestjs-api 脚手架,欢迎 Star!

## Getting Start

```javascript
 git clone https://github.com/BoBoooooo/NestJS-API-Server.git
 npm install
 npm start
```

## Features

- 登录模块、jwt 鉴权

  ```javascript
  全局jwt验证拦截 
  /src/guards /auth-guards.ts 
  /src/app.module.ts;
  ```

- socket.io

  ```javascript
  默认socket.io监听8080端口 
  /src/events/events.gateway.ts;

  client端实现查看 
  /public/index.html;
  ```

- BaseController|BaseService 封装基础 CRUD 接口

- list 接口支持高级查询,具体实现查看 BaseService

- 全局异常处理
  ```javascript
  //包含全局http异常处理以及全局all异常处理
  /src/filter/{*.ts}
  /src/main.ts
  ```
- log 日志
  ```javascript
  采用log4js 
  /src/log 
  /src/config/log4js.ts;
  ```
- 统一 api ResultBean 封装

- 文件上传,静态资源服务

- 一键生成数据库模型 `npm run db`
  ```javascript
  选用TypeOrm;
  ```

## ToDo

1. HMR , 目前根据官方 HMR 的实现方式遇到bug
2. Redis 存储token
3. ...
