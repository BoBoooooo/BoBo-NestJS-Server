/*
 * @file: ResultBean
 * @copyright: NanJing Anshare Tech .Com
 * @author: BoBo
 * @Date: 2020年08月10 15:56:42
 */

export interface ResultBean {
  code: number;
  message: string;
  data: any;
}

export class ResultGenerator {
  static success(data: any, message:string = 'success'): ResultBean {
    const result: ResultBean = {
      code: 10,
      message,
      data,
    };
    return result;
  }

  static fail(code: number, message: string) {
    const result: ResultBean = {
      code,
      message,
      data: undefined,
    };
    return result;
  }
}
