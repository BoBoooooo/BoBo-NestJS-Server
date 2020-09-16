import { Column, Entity, Index } from "typeorm";
import { BoolBitTransformer } from "src/core/transform";

@Index("index_vodevalue", ["codeValue"], {})
@Entity("ad_codelist_type", { schema: "nest" })
export class AdCodelistType {
  @Column("varchar", { primary: true, name: "id", comment: "ID", length: 36 })
  id: string;

  @Column("varchar", {
    name: "codeValue",
    nullable: true,
    comment: "字典类型名称",
    length: 64,
  })
  codeValue: string | null;

  @Column("varchar", {
    name: "typeName",
    nullable: true,
    comment: "字典类型描述",
    length: 100,
  })
  typeName: string | null;

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

  @Column("varchar", {
    name: "parentId",
    nullable: true,
    comment: "父级ID",
    length: 36,
  })
  parentId: string | null;
}
