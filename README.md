# NestJS-API-Server

轻量级 nestjs-api 脚手架,欢迎 Star!

配套前端地址 https://github.com/BoBoooooo/Anshare_Vue_Admin.git

swagger地址 http://server.boboooooo.top:7788/api/
socket.io测试地址 http://server.boboooooo.top:7788

## Getting Start

* git clone https://github.com/BoBoooooo/NestJS-API-Server.git
* npm install
* 配置mysql数据库
  * 新建数据库 nest 
  * 导入 nest.sql
  * 修改以下相关配置
    * package.json->scripts->db
    * /src/config/env/*
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

- 一键生成数据库模型 `npm run db`  (typeorm-model-generator)

## 热更新

nest start --watch (auto reload project)

## 部署

``` javascript
// 项目提供了 /src/config/env/dev,prod,test 三种环境变量配置文件

// main入口监听端口号
await app.listen(process.env.PORT || 3000);

// 采用不同的npm命令实现多环境部署
cross-env NODE_ENV=production   // npm 命令 cross-env指定当前环境
PORT=3000 // 指定监听端口
```

具体流程
* npm run build
* 拷贝dist文件夹
* 拷贝package.json
* 服务器上执行 npm install 安装所需依赖 (此处大坑,依赖并不会被打包到dist文件夹中)
* npm run start:prod  /  npm run pm2

## ToDo

1. Redis 支持
2. TypeOrm 多表查询
