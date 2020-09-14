/*
 * @file: 文件上传模块
 * @copyright: NanJing Anshare Tech .Com
 * @author: BoBo
 * @Date: 2020年08月10 15:47:05
 */
import { Post, Controller, UploadedFile, UseInterceptors, Body } from '@nestjs/common';
import { FileInterceptor } from '@nestjs/platform-express';
import { UploadService } from './upload.service';

@Controller('file')
@UseInterceptors(FileInterceptor('file'))
export class UploadController {
    constructor(private readonly uploadFileService: UploadService) {}
    @Post('/upload')
    uploadFile(@UploadedFile() file, @Body() body): any {
        // 
        return file
    }
}
