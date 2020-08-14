# NestJS-API-Server

一套轻量级 nestjs-api 脚手架,欢迎 Star!

## Getting Start

```javascript
 1、git clone https://github.com/BoBoooooo/NestJS-API-Server.git
 2、npm install

 3、新建数据库 nest , 并导入 nest.sql
 4、修改以下两处位置 数据库密码
 package.json->scripts->db
 app.module.ts

 5、npm start
 6、Enjoy !!!

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
```javascript
eq:
{
	"searchCondition":[{
		"field":"userName",
		"operator":"like",
		"value":"ce"
	},
	{
		"field":"userName",
		"operator":"like",
		"value":"shi"
	}],
	"pageIndex":1,
	"pageSize":1,
	"orderCondition":"id desc"
}

===

select * from x where userName like '%ce%' and userName like '%shi%' order by id desc limit 1,1 

```

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
