import { Column, Entity } from "typeorm";
import { BoolBitTransformer } from "src/core/transform";

@Entity("ad_codelist", { schema: "nest" })
export class AdCodelist {
  @Column("varchar", { primary: true, name: "ID", comment: "ID", length: 50 })
  id: string;

  @Column("text", { name: "CodeValue", nullable: true, comment: "字典值" })
  codeValue: string | null;

  @Column("varchar", {
    name: "CodeName",
    nullable: true,
    comment: "字典值描述",
    length: 100,
  })
  codeName: string | null;

  @Column("varchar", {
    name: "CodeType",
    nullable: true,
    comment: "字典类型",
    length: 50,
  })
  codeType: string | null;

  @Column("varchar", {
    name: "CodeTypeDict",
    nullable: true,
    comment: "字典类型名称",
    length: 100,
  })
  codeTypeDict: string | null;

  @Column("decimal", {
    name: "CodeOrder",
    nullable: true,
    comment: "排序",
    precision: 8,
    scale: 0,
  })
  codeOrder: string | null;

  @Column("varchar", {
    name: "Remark",
    nullable: true,
    comment: "备注",
    length: 255,
  })
  remark: string | null;

  
  @Column("bit", {
    name: "IsDeleted",
    comment: "记录删除标志 [0]-未删除;[1]-逻辑删除",
    default: () => "'b'0''",
    transformer: new BoolBitTransformer()
  })
  isDeleted: boolean;


  @Column("datetime", {
    name: "Timestamp",
    nullable: true,
    comment: "创建时间",
  })
  timestamp: Date | null;

  @Column("varchar", { name: "TypeID", nullable: true, length: 50 })
  typeId: string | null;
}
