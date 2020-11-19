/*
 * @file: 文件上传 service
 * @copyright: NanJing Anshare Tech .Com
 * @author: BoBo
 * @Date: 2020年08月10 15:47:19
 */
import { Injectable, HttpStatus } from '@nestjs/common'
import { join, resolve } from 'path'
import { createWriteStream } from 'fs'
import { ApiException } from './../../filter/api-exception.filter'
import { StatusCode } from './../../core/code.enum'
import { ResultGenerator, ResultBean } from './../../core/resultBean'
import { dirExists } from 'src/utils/file'
const uploadBasePath: string = join(__dirname, '../../../', 'public/uploads')

@Injectable()
export class UploadService {
  /**
   * 单个文件传输
   * @param file
   */
  public async uploadFile(file): Promise<ResultBean> {
    try {
      await dirExists(uploadBasePath)
      const { originalname, buffer } = file
      const fullName = new Date().toDateString() + '-' + originalname
      const filePath = resolve(uploadBasePath, fullName)
      const writeStream = createWriteStream(filePath)
      writeStream.write(buffer)
      return ResultGenerator.success('上传成功')
    } catch (err) {
      throw new ApiException(
        '文件上传错误',
        StatusCode.BUSINESS_FAIL,
        HttpStatus.FORBIDDEN
      )
    }
  }
}
