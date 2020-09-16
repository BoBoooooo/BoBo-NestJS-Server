import { Column, Entity } from "typeorm";
import { BoolBitTransformer } from "src/core/transform";

@Entity("role", { schema: "nest" })
export class Role {
  @Column("char", { primary: true, name: "id", length: 36 })
  id: string;

  @Column("text", { name: "roleName", nullable: true, comment: "角色名" })
  roleName: string | null;

  @Column("text", { name: "roleAuthName", nullable: true, comment: "权限" })
  roleAuthName: string | null;

  @Column("longtext", {
    name: "roleAuthNameDict",
    nullable: true,
    comment: "权限名称",
  })
  roleAuthNameDict: string | null;

  @Column("int", { name: "rank", nullable: true, comment: "排序" })
  rank: number | null;

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
