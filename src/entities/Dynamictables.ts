import { Column, Entity } from "typeorm";

@Entity("dynamictables", { schema: "nest" })
export class Dynamictables {
  @Column("char", { primary: true, name: "ID", length: 36 })
  id: string;

  @Column("varchar", {
    name: "TableName",
    nullable: true,
    comment: "表名",
    length: 255,
  })
  tableName: string | null;

  @Column("text", { name: "FormJson", nullable: true, comment: "数据" })
  formJson: string | null;

  @Column("text", { name: "Position", nullable: true, comment: "使用位置" })
  position: string | null;

  @Column("varchar", {
    name: "Optime",
    nullable: true,
    comment: "操作时间",
    length: 50,
  })
  optime: string | null;

  @Column("text", { name: "Remark", nullable: true, comment: "备注" })
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
}
