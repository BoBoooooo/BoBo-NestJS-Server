/*
 * @file: 状态码枚举
 * @copyright: NanJing Anshare Tech .Com
 * @author: BoBo
 * @Date: 2020年08月10 15:48:38
 */
export enum StatusCode {
  TIMEOUT = -1, // 系统繁忙
  SUCCESS = 200, // 成功
  BUSINESS_FAIL = 400, // 业务类错误
  USER_ID_INVALID = 10001, // 用户id无效
}