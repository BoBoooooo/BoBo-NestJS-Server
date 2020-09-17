import { Column, Entity, JoinColumn } from "typeorm";

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


  @Column("timestamp", {
    name: "timestamp",
    nullable: false,
    comment: "创建时间",
    default: () => 'CURRENT_TIMESTAMP',
  })
  timestamp: Date;

}
