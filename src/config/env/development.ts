/*
 * @file: 数据库配置文件 https://www.bookstack.cn/read/TypeORM-0.2.20-zh/connection-options.md
 * @copyright: NanJing Anshare Tech .Com
 * @author: BoBo
 * @Date: 2020年09月15 14:16:42
 */
import { join } from 'path';

export default {
  // 端口
  port: parseInt(process.env.PORT, 10) || 3000,
  // 是否开启swagger
  enableSwagger: true,
  // 数据库配置
  DATABASE_CONFIG: {
    type: 'mysql',
    host: 'localhost',
    port: 3306,
    username: 'root',
    password: 'Anshare.cc',
    database: 'nest',
    charset: 'utf8mb4',
    entities: [join(__dirname, '..','..', '/entities/*{.ts,.js}')],
    synchronize: true, // 是否在每次应用程序启动时自动创建数据库架构
    logging: false, 
    dateStrings: true, // 强制日期类型（TIMESTAMP，DATETIME，DATE）作为字符串返回，而不是转换为 JavaScript Date 对象
  },
};
