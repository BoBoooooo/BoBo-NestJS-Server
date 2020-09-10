import { Column, Entity, Index } from "typeorm";
import { BoolBitTransformer } from "src/core/transform";

@Index("index_id", ["id"], {})
@Index("index_username", ["userName"], {})
@Index("index_deptid", ["deptId"], {})
@Entity("users", { schema: "nest" })
export class Users {
  @Column("varchar", { primary: true, name: "ID", length: 36 })
  id: string;

  @Column("varchar", { name: "UserName", nullable: true, length: 50 })
  userName: string | null;

  @Column("varchar", { name: "DeptID", nullable: true, length: 36 })
  deptId: string | null;

  @Column("varchar", { name: "RoleID", nullable: true, length: 36 })
  roleId: string | null;

  @Column("varchar", { name: "Password", nullable: true, length: 50 })
  password: string | null;

  @Column("varchar", { name: "RealName", nullable: true, length: 20 })
  realName: string | null;

  @Column("int", { name: "Rank", nullable: true, default: () => "'0'" })
  rank: number | null;

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

  @Column("varchar", {
    name: "Tel",
    nullable: true,
    comment: "联系方式",
    length: 255,
  })
  tel: string | null;

  @Column("longtext", { name: "Photo", nullable: true, comment: "照片" })
  photo: string | null;
}
