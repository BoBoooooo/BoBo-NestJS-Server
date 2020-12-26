/*
 * @file: 文件上传模块
 * @copyright: BoBo
 * @author: BoBo
 * @Date: 2020年08月10 15:47:05
 */
import { Post, Controller, UploadedFile, UseInterceptors } from '@nestjs/common'
import { FileInterceptor } from '@nestjs/platform-express'

@Controller('file')
@UseInterceptors(FileInterceptor('file'))
export class UploadController {
  constructor() {}
  @Post('/upload')
  uploadFile(@UploadedFile() file): any {
    //
    return file
  }
}
