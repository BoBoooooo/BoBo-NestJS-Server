import { ValueTransformer } from "typeorm";

/*
 * @file: typeorm bit(1) => 转换为 true false
          https://github.com/typeorm/typeorm/issues/3875
 * @copyright: NanJing Anshare Tech .Com
 * @author: BoBo
 * @Date: 2020年09月07 10:59:00
 */
export class BoolBitTransformer implements ValueTransformer {
  // To db from typeorm
  to(value: boolean | null): Buffer | null {
    if (value === null) {
      return null;
    }
    const res = new Buffer(1);
    res[0] = value ? 1 : 0;
    return res;
  }
  // From db to typeorm
  from(value: Buffer): boolean | null {
    if (value === null) {
      return null;
    }
    return value[0] === 1;
  }
}