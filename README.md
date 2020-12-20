# BoBo-NestJS-Server

<p align="center">
  <a href="http://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo_text.svg" width="320" alt="Nest Logo" /></a>
</p>

[travis-image]: https://api.travis-ci.org/nestjs/nest.svg?branch=master
[travis-url]: https://travis-ci.org/nestjs/nest
[linux-image]: https://img.shields.io/travis/nestjs/nest/master.svg?label=linux
[linux-url]: https://travis-ci.org/nestjs/nest

<p align="center">A progressive <a href="http://nodejs.org" target="blank">Node.js</a> framework for building efficient and scalable server-side applications, heavily inspired by <a href="https://angular.io" target="blank">Angular</a>.</p>
<p align="center">
<a href="https://www.npmjs.com/~nestjscore"><img src="https://img.shields.io/npm/v/@nestjs/core.svg" alt="NPM Version" /></a>
<a href="https://www.npmjs.com/~nestjscore"><img src="https://img.shields.io/npm/l/@nestjs/core.svg" alt="Package License" /></a>
<a href="https://www.npmjs.com/~nestjscore"><img src="https://img.shields.io/npm/dm/@nestjs/core.svg" alt="NPM Downloads" /></a>
<a href="https://travis-ci.org/nestjs/nest"><img src="https://api.travis-ci.org/nestjs/nest.svg?branch=master" alt="Travis" /></a>
<a href="https://travis-ci.org/nestjs/nest"><img src="https://img.shields.io/travis/nestjs/nest/master.svg?label=linux" alt="Linux" /></a>
<a href="https://coveralls.io/github/nestjs/nest?branch=master"><img src="https://coveralls.io/repos/github/nestjs/nest/badge.svg?branch=master#5" alt="Coverage" /></a>
<a href="https://gitter.im/nestjs/nestjs?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=body_badge"><img src="https://badges.gitter.im/nestjs/nestjs.svg" alt="Gitter" /></a>
<a href="https://opencollective.com/nest#backer"><img src="https://opencollective.com/nest/backers/badge.svg" alt="Backers on Open Collective" /></a>
<a href="https://opencollective.com/nest#sponsor"><img src="https://opencollective.com/nest/sponsors/badge.svg" alt="Sponsors on Open Collective" /></a>
<a href="https://paypal.me/kamilmysliwiec"><img src="https://img.shields.io/badge/Donate-PayPal-dc3d53.svg"/></a>
<a href="https://twitter.com/nestframework"><img src="https://img.shields.io/twitter/follow/nestframework.svg?style=social&label=Follow"></a>
</p>
  <!--[![Backers on Open Collective](https://opencollective.com/nest/backers/badge.svg)](https://opencollective.com/nest#backer)
  [![Sponsors on Open Collective](https://opencollective.com/nest/sponsors/badge.svg)](https://opencollective.com/nest#sponsor)-->


🚀 轻量级 `NestJS-API` 脚手架,欢迎 Star!

🍌 [配套前端地址](https://github.com/BoBoooooo/Anshare_Vue_Admin.git)

🍉 [swagger地址](http://server.boboooooo.top:7788/api/)

🍏 [socket.io测试地址](http://server.boboooooo.top:7788)

## 1. 开始使用

* git clone https://github.com/BoBoooooo/NestJS-API-Server.git
* npm install
* 配置mysql数据库
  * 新建数据库 `nest`
  * 导入 `nest.sql`
  * 修改以下相关数据库配置
    * `package.json->scripts->db`
    * `/src/config/env/*`
* npm start

## 2.目录结构

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

## 3. 功能

- 登录、JWT鉴权

- Socket.IO

  默认Socket.IO监听8080端口 `/src/events/events.gateway.ts`

  client端实现查看 `/public/index.html`

- `BaseController` `BaseService` 封装基础CRUD接口
  - /xxx/add
  - /xxx/update
  - /xxx/delete
  - /xxx/list
  - /xxx/tree
  - /xxx/detail

- list接口支持`高级查询`,具体实现查看`BaseService`

```javascript
示例:
curl - POST /users/list
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

- 全局`http异常处理`以及`代码异常`处理
  
- log 日志

- HTTP返回值统一ResultBean封装

- 文件上传,静态资源服务

- 一键生成数据库模型 `npm run db`  (typeorm-model-generator)
## 4. 部署

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