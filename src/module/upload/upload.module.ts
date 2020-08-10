import { UploadController } from './upload.controller';
import { Module } from '@nestjs/common';
import { UploadService } from './upload.service';

@Module({
  providers:[UploadService],
  controllers:[UploadController]
})
export class UploadModule {}
