/*
 * @file: 数据库配置文件 https://www.bookstack.cn/read/TypeORM-0.2.20-zh/connection-options.md
 * @copyright: BoBo
 * @author: BoBo
 * @Date: 2020年09月15 14:16:42
 */
import { join } from 'path'

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
    entities: [join(__dirname, '..', '..', '/entities/*{.ts,.js}')],
    synchronize: true,
    logging: true
  }
}
