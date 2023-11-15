import { UploadController } from './upload.controller'
import { Module } from '@nestjs/common'
import { UploadService } from './upload.service'
import { MulterModule } from '@nestjs/platform-express'
// import dayjs = require('dayjs')
import { diskStorage } from 'multer'
const guid = require('uuid')
const path = require('path')
@Module({
  imports: [
    // 此处为上传模块全局配置
    // 参考 https://www.jianshu.com/p/28f8dd9a732e
    MulterModule.register({
      storage: diskStorage({
        //自定义路径,此处默认保存在项目根目录下的upload文件夹
        destination: path.join(__dirname, '../../../public/affix', '/'),
        filename: (req, file, cb) => {
          // 自定义文件名
          const filename = `${guid.v4()}.${file.mimetype.split('/')[1]}`
          return cb(null, filename)
          // 原始文件名
          // return  cb(null, file.originalname);
        },
      }),
      limits: {
        fieldSize: 1024 * 1024,
        fileSize: 1024 * 1024,
      },
    }),
  ],
  providers: [UploadService],
  controllers: [UploadController],
})
export class UploadModule {}
