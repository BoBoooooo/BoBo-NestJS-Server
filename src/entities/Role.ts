import { Column, Entity } from "typeorm";

@Entity("role", { schema: "nest" })
export class Role {
  @Column("char", { primary: true, name: "ID", length: 36 })
  id: string;

  @Column("text", { name: "RoleName", nullable: true, comment: "角色名" })
  roleName: string | null;

  @Column("text", { name: "RoleAuthName", nullable: true, comment: "权限" })
  roleAuthName: string | null;

  @Column("longtext", {
    name: "RoleAuthNameDict",
    nullable: true,
    comment: "权限名称",
  })
  roleAuthNameDict: string | null;

  @Column("int", { name: "Rank", nullable: true, comment: "角色范围" })
  rank: number | null;

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
    name: "HomePage",
    nullable: true,
    comment: "角色默认首页设置",
    length: 255,
  })
  homePage: string | null;

  @Column("varchar", {
    name: "HomePageDict",
    nullable: true,
    comment: "角色默认首页名称设置",
    length: 255,
  })
  homePageDict: string | null;

  @Column("text", { name: "RoleFlowKeys", nullable: true })
  roleFlowKeys: string | null;
}
