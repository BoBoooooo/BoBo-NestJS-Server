import { Column, Entity } from "typeorm";
import { BoolBitTransformer } from "src/core/transform";

@Entity("form", { schema: "nest" })
export class Form {
  @Column("char", { primary: true, name: "id", length: 36 })
  id: string;

  @Column("varchar", {
    name: "tableName",
    nullable: true,
    comment: "表名",
    length: 255,
  })
  tableName: string | null;

  @Column("longtext", { name: "formJson", nullable: true, comment: "数据" })
  formJson: string | null;

  @Column("text", { name: "position", nullable: true, comment: "使用位置" })
  position: string | null;

  @Column("varchar", {
    name: "optime",
    nullable: true,
    comment: "操作时间",
    length: 50,
  })
  optime: string | null;

  @Column("text", { name: "remark", nullable: true, comment: "备注" })
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
}
