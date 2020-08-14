/*
 * @file: api异常拦截
 * @copyright: NanJing Anshare Tech .Com
 * @author: BoBo
 * @Date: 2020年08月10 15:55:37
 */
import { StatusCode } from './../core/code.enum';
import { HttpException, HttpStatus } from '@nestjs/common';

export class ApiException extends HttpException {
    private errorMessage: string;
    private errorCode: StatusCode;

    constructor(errorMessage: string, errorCode: StatusCode, statusCode: HttpStatus) {
        super(errorMessage, statusCode);
        this.errorMessage = errorMessage;
        this.errorCode = errorCode;
    }

    getErrorCode(): StatusCode {
        return this.errorCode;
    }

    getErrorMessage(): string {
        return this.errorMessage;
    }
}
