import { Column, Entity, JoinColumn } from "typeorm";
import { BoolBitTransformer } from "src/core/transform";

@Entity("ad_codelist", { schema: "nest" })
export class AdCodelist {
  @Column("varchar", { primary: true, name: "id", comment: "ID", length: 50 })
  id: string;

  @Column("text", { name: "codeValue", nullable: true, comment: "字典值" })
  codeValue: string | null;

  @Column("varchar", {
    name: "codeName",
    nullable: true,
    comment: "字典值描述",
    length: 100,
  })
  codeName: string | null;

  @Column("varchar", {
    name: "codeType",
    nullable: true,
    comment: "字典类型",
    length: 50,
  })
  codeType: string | null;

  @Column("decimal", {
    name: "codeOrder",
    nullable: true,
    comment: "排序",
    precision: 8,
    scale: 0,
  })
  codeOrder: string | null;

  @Column("varchar", {
    name: "remark",
    nullable: true,
    comment: "备注",
    length: 255,
  })
  remark: string | null;

  @Column("bit", {
    name: "isDeleted",
    comment: "记录删除标志 [0]-未删除;[1]-逻辑删除",
    default: () => "'b'0''",
    transformer: new BoolBitTransformer()
  })
  isDeleted: boolean;

  @Column("datetime", {
    name: "timestamp",
    nullable: true,
    comment: "创建时间",
  })
  timestamp: Date | null;

  @JoinColumn()
  typeName:string|null
}
