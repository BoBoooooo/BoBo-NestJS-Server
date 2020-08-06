# Koa2 RESTful API 服务器脚手架

这是一个基于 Koa2 的轻量级 RESTful API Server 脚手架，支持 ES6。

**注意：** 因升级 Koa 版本至 2.3.0+，为配合相应的依赖项，故需要 Node.js 版本大于等于 v8.0.0（建议 v11.13.0），NPM 大于等于 v5.0.0。建议使用 yarn 代替 npm。

约定使用 JSON 格式传输数据，POST、PUT、DELET 方法支持的 Content-Type 为`application/x-www-form-urlencoded、multipart/form-data、application/json`可配置支持跨域。非上传文件推荐 application/x-www-form-urlencoded。通常情况下返回 application/json 格式的 JSON 数据。

可选用 redis 等非关系型数据库。考虑 RESTful API Server 的实际开发需要，这里通过 sequelize.js 作为 PostgreSQL, MySQL, MariaDB, SQLite, MSSQL 关系型数据库的 ORM，如无需关系型 ORM，`npm remove sequelize -S`，然后删除`src/lib/sequelize.js`文件。

此脚手架只安装了一些和 Koa2 不冲突的搭建 RESTful API Server 的必要插件，附带每一个插件的说明。采用 ESlint 进行语法检查。

## 调试说明

```bash
npm run dev --debug

Or

npm start --debug
```

支持 Node.js 原生调试功能：https://nodejs.org/api/debugger.html

## 开发环境部署

生成 node 直接可以执行的代码到 dist 目录：

```bash
npm run build
```

```bash
npm run production # 生产模式运行

# Or

node dist/app.js
```

### PM2 部署说明

提供了 PM2 部署 RESTful API Server 的示例配置，位于“pm2.js”文件中。

```bash
pm2 start pm2.js
```

PM2 配合 Docker 部署说明： http://pm2.keymetrics.io/docs/usage/docker-pm2-nodejs/

### Docker 部署说明

```bash
docker pull node
docker run -itd --name RESTfulAPI -v `pwd`:/usr/src/app -w /usr/src/app node node ./dist/app.js
```

通过'docker ps'查看是否运行成功及运行状态

### Linux/Mac 直接后台运行生产环境代码

有时候为了简单，我们也这样做：

```bash
nohup node ./dist/app.js > logs/out.log &
```

查看运行状态（如果有'node app.js'出现则说明正在后台运行）：

```bash
ps aux|grep app.js
```

查看运行日志

```bash
cat logs/out.log
```

监控运行状态

```bash
tail -f logs/out.log
```

### 配合 Vue-cli 部署说明

Vue-cli（Vue2）运行'npm run build'后会在'dist'目录中生成所有静态资源文件。推荐使用 Nginx 处理静态资源以达最佳利用效果，然后通过上述任意一种方法部署 RESTful API 服务器。前后端是完全分离的，请注意 Koa2 RESTful API Server 项目中 config/main.json 里面的跨域配置。

推荐的 Nginx 配置文件：

```text
server
    {
        listen 80;
        listen [::]:80;
        server_name abc.com www.abc.com; #绑定域名
        index index.html index.htm;
        root  /www/app/dist; #Vue-cli编译后的dist目录

        location ~ .*\.(gif|jpg|jpeg|png|bmp|swf)$
        {
            expires      30d;
        }

        location ~ .*\.(js|css)?$
        {
            expires      12h;
        }

        location ~ /\.
        {
            deny all;
        }

        access_log off; #访问日志路径
    }
```

Docker 中 Nginx 运行命令(将上述配置文件任意命名放置于 nginx_config 目录中即可)：

```bash
docker run -itd -p 80:80 -p 443:443 -v `pwd`/nginx_config:/etc/nginx/conf.d nginx
```

### 关于 Token 使用的特别说明（JWT 身份认证）

`src\app.js`目录中有一行代码：
`.use(jwt({ secret: publicKey }).unless({ path: [/^\/public|\/user\/login|\/assets/] }))`

在 path 里面的开头路径则不进行身份认证，否则都将进行  鉴权。

前端处理方案：

```javascript
import axios from "axios";
import { getToken } from "./tool";

const DevBaseUrl = "http://127.0.0.1:8080";
const ProdBashUrl = "https://xxx.xxx";

let config = {
  baseURL: process.env.NODE_ENV !== "production" ? DevBaseUrl : ProdBashUrl, // 配置API接口地址
};

let token = getToken();
if (token) {
  config.headers = { Authorization: "Bearer " + token };
}

let request = axios.create(config);

// http request 拦截器
axios.interceptors.request.use(
  (config) => {
    if (window) {
      let token = getToken();
      if (token) {
        // 判断是否存在token，如果存在的话，则每个http header都加上token
        config.headers.Authorization = `Bearer ${token}`;
      }
    }
    // if (config.method === 'get') {
    //   config.url = config.url + 'timestamp=' + Date.now().toString()
    // }
    return config;
  },
  (err) => {
    return Promise.reject(err);
  }
);

export default request;
```

`tool.js`文件

```javascript
// 写 cookies
export let setCookie = function setCookie(name, value, time) {
  if (time) {
    let strsec = getsec(time);
    let exp = new Date();
    exp.setTime(exp.getTime() + parseInt(strsec));
    document.cookie =
      name + "=" + escape(value) + ";expires=" + exp.toGMTString();
  } else {
    document.cookie = name + "=" + escape(value);
  }
};

// 读 cookies
export let getCookie = function (name) {
  let reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
  let arr = document.cookie.match(reg);
  return arr ? unescape(arr[2]) : null;
};

// 删 cookies
export let delCookie = function (name) {
  var exp = new Date();
  exp.setTime(exp.getTime() - 1);
  var cval = getCookie(name);
  if (cval != null) {
    document.cookie = name + "=" + cval + ";expires=" + exp.toGMTString();
  }
};

// 获取Token
export let getToken = function () {
  if (window.sessionStorage && window.sessionStorage.Bearer) {
    return window.sessionStorage.Bearer;
  } else if (window.localStorage && window.localStorage.Bearer) {
    return window.localStorage.Bearer;
  } else if (window.document.cookie) {
    return getCookie("Bearer");
  }
};

// 设置Token
export let setToken = function (token, rememberTime) {
  if (window.sessionStorage) {
    window.sessionStorage.Bearer = token;
  }

  if ((rememberTime && window.localStorage) || !window.sessionStorage) {
    window.localStorage.Bearer = token;
  }

  if (
    window.document.cookie &&
    !window.sessionStorage &&
    !window.localStorage
  ) {
    if (rememberTime) {
      setCookie("Bearer", token, rememberTime);
    } else {
      setCookie("Bearer", token);
    }
  }
};

// 删除Token
export let delToken = function () {
  if (window.sessionStorage && window.sessionStorage.Bearer) {
    window.sessionStorage.removeItem("Bearer");
  }

  if (window.localStorage && window.localStorage.Bearer) {
    window.localStorage.removeItem("Bearer");
  }

  if (window.document.cookie) {
    delCookie("Bearer");
  }
};
```

大概原理：
通过某个 API（通常是登录 API）获取成功后的 Token，存于本地，然后每次请求的时候在 Header 带上`Authorization: "Bearer " + token`，通常情况下无需担心本地 Token 被破解。

## 引入插件介绍

> 引入插件的版本将会持续更新

引入的插件：  
`koa@2 koa-body@2 koa-router@next koa-static2 koa-compose require-directory babel-cli babel-register babel-plugin-transform-runtime babel-preset-es2015 babel-preset-stage-2 gulp gulp-eslint eslint eslint-config-standard eslint-friendly-formatter eslint-plugin-html eslint-plugin-promise nodemailer promise-mysql 等`

**koa2**: HTTP 框架  
&nbsp;Synopsis: HTTP framework.  
&nbsp;From: https://github.com/koajs/koa v2

**koa-body**: body 解析器  
&nbsp;Synopsis: A full-feature koa body parser middleware.  
&nbsp;From: https://github.com/dlau/koa-body

**koa-router**: Koa 路由  
&nbsp;Synopsis: Router middleware for koa.  
&nbsp;From: https://github.com/alexmingoia/koa-router/tree/master/

**koa-static2**: 静态资源中间件  
&nbsp;Synopsis: Middleware for Koa2 to serve a folder under a name declared by user.  
&nbsp;From: https://github.com/Secbone/koa-static2

**koa-compose**: 多个中间件组合成一个  
&nbsp;Synopsis: Compose several middleware into one.  
&nbsp;From: https://github.com/koajs/compose

**require-directory**: 递归遍历指定目录  
&nbsp;Synopsis: Recursively iterates over specified directory.  
&nbsp;From: https://github.com/troygoode/node-require-directory

**babel-cli**: Babel 编译 ES6 代码为 ES5 代码  
&nbsp;Synopsis: Babel is a JavaScript compiler, ES6 to ES5.  
&nbsp;From: https://github.com/babel/babel/tree/master/packages/babel-cli

**babel-register**: Babel 开发环境实时编译 ES6 代码  
&nbsp;Synopsis: Babel hook.  
&nbsp;From: https://github.com/babel/babel/tree/master/packages/babel-cli

**babel-plugin-transform-runtime**: Babel 配置 ES6 的依赖项  
**babel-preset-es2015**: 同上  
**babel-preset-stage-2**: 同上

**gulp**: 基于流的自动化构建工具  
&nbsp;Synopsis: Gulp is a toolkit for automating painful or time-consuming tasks.  
&nbsp;From: https://github.com/gulpjs/gulp

**gulp-eslint**: gulp 的 ESLint 检查插件  
&nbsp;Synopsis: A gulp plugin for ESLint.  
&nbsp;From: https://github.com/adametry/gulp-eslint

**gulp-nodemon**: 修改 JS 代码后自动重启  
&nbsp;Synopsis: nodemon will watch the files in the directory in which nodemon was started, and if any files change, nodemon will automatically restart your node application.  
&nbsp;From: https://github.com/remy/nodemon

**eslint**: JavaScript 语法检查工具  
&nbsp;Synopsis: A fully pluggable tool for identifying and reporting on patterns in JavaScript.  
&nbsp;From:

**eslint-config-standard**: 一个 ESlint 配置&nbsp;Synopsis: ESLint Shareable Config for JavaScript Standard Style.  
&nbsp;From: https://github.com/feross/eslint-config-standard

**eslint-friendly-formatter**: 使得 ESlint 提示在 Sublime Text 或 iterm2 中更友好，Atom 也有对应的 ESlint 插件。  
&nbsp;Synopsis: A simple formatter/reporter for ESLint that's friendly with Sublime Text and iterm2 'click to open file' functionality  
&nbsp;From: https://github.com/royriojas/eslint-friendly-formatter

**eslint-plugin-html**: 检查 HTML 文件中的 JS 代码规范  
&nbsp;Synopsis: An ESLint plugin to extract and lint scripts from HTML files.  
&nbsp;From: https://github.com/BenoitZugmeyer/eslint-plugin-html

**eslint-plugin-promise**: 检查 JavaScript promises  
&nbsp;Synopsis: Enforce best practices for JavaScript promises.&nbsp;From: https://github.com/xjamundx/eslint-plugin-promise

**eslint-plugin-promise**: ESlint 依赖项  
&nbsp;Synopsis: ESlint Rules for the Standard Linter.&nbsp;From: https://github.com/xjamundx/eslint-plugin-standard

**promise-mysql**: 操作 MySQL 数据库依赖  
&nbsp;Synopsis: Promise Mysql.  
&nbsp;From: https://github.com/lukeb-uk/node-promise-mysql

**sequelize**: 关系型数据库 ORM  
&nbsp;Synopsis: Sequelize is a promise-based ORM for Node.js.  
&nbsp;From: https://github.com/sequelize/sequelize

**mysql**: MySQL 库  
&nbsp;Synopsis: A pure node.js JavaScript Client implementing the MySql protocol.  
&nbsp;From: https://github.com/mysqljs/mysql

支持 Koa2 的中间件列表：https://github.com/koajs/koa/wiki

**其它经常配合 Koa2 的插件：**

**koa-session2**: Session 中间件  
&nbsp;Synopsis: Middleware for Koa2 to get/set session.  
&nbsp;From: https://github.com/Secbone/koa-session2

**koa-nunjucks-2**:  
一个好用的模版引擎，可用于前后端，nunjucks：https://github.com/mozilla/nunjucks

**koa-favicon**:  
Koa 的 favicon 中间件：https://github.com/koajs/favicon

**koa-server-push**:  
HTTP2 推送中间件：https://github.com/silenceisgolden/koa-server-push

**koa-convert**: 转换旧的中间件支持 Koa2  
&nbsp;Synopsis: Convert koa generator-based middleware to promise-based middleware.  
&nbsp;From: https://github.com/koajs/convert

**koa-logger**: 请求日志输出，需要配合上面的插件使用  
&nbsp;Synopsis: Development style logger middleware for Koa.  
&nbsp;From: https://github.com/koajs/logger

**koa-onerror**:  
Koa 的错误拦截中间件，需要配合上面的插件使用：https://github.com/koajs/onerror

**koa-multer**: 处理数据中间件  
&nbsp;Synopsis: Multer is a node.js middleware for handling multipart/form-data for koa.  
&nbsp;From: https://github.com/koa-modules/multer

## 目录结构说明

```bash
.
├── README.md
├── .babelrc                # Babel 配置文件
├── .editorconfig           # 编辑器风格定义文件
├── .eslintignore           # ESlint 忽略文件列表
├── .eslintrc.js            # ESlint 配置文件
├── .gitignore              # Git 忽略文件列表
├── gulpfile.js             # Gulp配置文件
├── package.json            # 描述文件
├── pm2.js                  # pm2 部署示例文件
├── build                   # build 入口目录
│   └── dev-server.js       # 开发环境 Babel 实时编译入口
├── src                     # 源代码目录，编译后目标源代码位于 dist 目录
│   ├── app.js              # 入口文件
│   ├── config.js           # 主配置文件（*谨防泄密！）
│   ├── plugin              # 插件目录
│       └── smtp_sendemail  # 示例插件 - 发邮件
│   ├── tool                # 工具目录
│       ├── PluginLoader.js # 插件引入工具
│       └── Common.js       # 示例插件 - 发邮件
│   ├── lib                 # 库目录
│   ├── controllers         # 控制器
│   ├── models              # 模型
│   ├── routes              # 路由
│   └── services            # 服务
├── assets                  # 静态资源目录
└── logs                    # 日志目录
```

## 各类主流框架调用 RESTful API 的示例代码（仅供参考）

### JavaScript

```javascript
var xhr = new XMLHttpRequest();
xhr.open("POST", "http://localhost:3000/xxx", true); //POST或GET，true（异步）或 false（同步）
xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
xhr.withCredentials = true;
xhr.onreadystatechange = function () {
  if ((obj.readyState == 4 && obj.status == 200) || obj.status == 304) {
    var gotServices = JSON.parse(xhr.responseText);
  } else {
    console.log("ajax失败了");
  }
};
xhr.send({ para1: para1 });
```

## 彻底移除 ESlint 方法

删除 package.json 的 devDependencies 中所有 eslint 开头的插件，根目录下的“.eslintignore、.eslintrc.js”文件，并且修改 package.json 的 dev 为：

```bash
'dev': 'gulp start'
```

删除 gulpfile.js 中的 lint、eslint_start 两个任务，并且把 default 改为“gulp.task('default', ['start']”。
