/*
 * @file: 文件上传模块
 * @copyright: BoBo
 * @author: BoBo
 * @Date: 2020年08月10 15:47:05
 */
import { Post, Controller, UploadedFile, UseInterceptors } from '@nestjs/common'
import { FileInterceptor } from '@nestjs/platform-express'
import { ResultGenerator } from 'src/core/resultBean'
import { ResultBean } from './../../core/resultBean'

@Controller('file')
@UseInterceptors(FileInterceptor('file'))
export class UploadController {
  constructor() {}
  @Post('/upload')
  uploadFile(@UploadedFile() file): ResultBean {
    return ResultGenerator.success('/affix/' + file.filename, '上传成功')
  }
}
