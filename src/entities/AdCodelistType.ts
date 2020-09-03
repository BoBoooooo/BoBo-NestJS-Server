import { Column, Entity, Index } from "typeorm";

@Index("index_vodevalue", ["codeValue"], {})
@Entity("ad_codelist_type", { schema: "nest" })
export class AdCodelistType {
  @Column("varchar", { primary: true, name: "ID", comment: "ID", length: 36 })
  id: string;

  @Column("varchar", {
    name: "CodeValue",
    nullable: true,
    comment: "字典类型名称",
    length: 64,
  })
  codeValue: string | null;

  @Column("varchar", {
    name: "CodeName",
    nullable: true,
    comment: "字典类型描述",
    length: 100,
  })
  codeName: string | null;

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
  })
  isDeleted: boolean;

  @Column("datetime", {
    name: "Timestamp",
    nullable: true,
    comment: "创建时间",
  })
  timestamp: Date | null;

  @Column("varchar", {
    name: "ParentID",
    nullable: true,
    comment: "父级ID",
    length: 36,
  })
  parentId: string | null;
}
