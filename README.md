# NestJS-API-Server

轻量级 nestjs-api 脚手架,欢迎 Star!
配套前端地址 https://github.com/BoBoooooo/Anshare_Vue_Admin.git

## Getting Start

* git clone https://github.com/BoBoooooo/NestJS-API-Server.git
* npm install
* 配置mysql数据库
  * 新建数据库 nest 
  * 导入 nest.sql
  * 修改以下相关配置
    * package.json->scripts->db
    * /src/config/development.ts
* npm start
* Enjoy !!

## 目录结构

```bash
├── public                     # public
│   └── index.html             # 测试socket.io页面
├── src                        # src
│   ├── config                 # 环境变量等配置文件
│   ├── core                   # 通用定义文件
│   ├── entities               # 数据库ORM Entity
│   ├── events                 # webSocket
│   ├── filter                 # 全局异常filter
│   ├── guards                 # 路由守卫(鉴权)
│   ├── interceptor            # interceptor
│   ├── logs                   # logs
│   ├── middleware             # middleware logs
│   ├── module                 # 各个业务模块,包含base module
│   ├── utils                  # 工具函数
├── test                       # 测试
````

## Features

- 登录模块、jwt 鉴权

  ```javascript
  全局jwt验证拦截 / src / guards / auth - guards.ts / src / app.module.ts;
  ```

- socket.io

  ```javascript
  默认socket.io监听8080端口 / src / events / events.gateway.ts;

  client端实现查看 / public / index.html;
  ```

- BaseController| BaseService 封装基础 CRUD 接口

``` javascript
// 所有模块包含以下几种通用接口,详见 BaseService
 const enum = {
    INSERT: 'add',  
    UPDATE: 'update',
    DELETE: 'delete',
    SELECT: 'list',
    TREE: 'tree',
    DETAIL: 'detail',
 } 
```

- list 接口支持高级查询,具体实现查看 BaseService

```javascript
curl - POST /users/list
传参示例:
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
最后生成的sql：
select * from users where userName like '%ce%' and userName like '%shi%' order by id desc limit 1,1

```

- 全局异常处理
  ```javascript
  //包含全局http异常处理以及全局all异常处理
  /src/filter/{*.ts}
  /src/main.ts
  ```
- log 日志
  ```javascript
  采用log4js / src / log / src / config / log4js.ts;
  ```
- 统一 api ResultBean 封装

- 文件上传,静态资源服务

- 一键生成数据库模型 `npm run db`
  ```javascript
  选用TypeOrm;
  ```

## ToDo

1. HMR , 目前根据官方 HMR 的实现方式遇到 bug
2. Redis 支持
