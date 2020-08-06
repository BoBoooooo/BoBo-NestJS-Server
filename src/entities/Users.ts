import { Column, Entity, Index } from "typeorm";

@Index("index_id", ["id"], {})
@Index("index_username", ["userName"], {})
@Index("index_candidateuser", ["candidateUser"], {})
@Index("index_deptid", ["deptId"], {})
@Entity("users", { schema: "sw3k_tm" })
export class Users {
  @Column("varchar", { primary: true, name: "ID", length: 36 })
  id: string;

  @Column("varchar", { name: "USER_ID", nullable: true, length: 36 })
  userId: string | null;

  @Column("varchar", { name: "UserName", nullable: true, length: 50 })
  userName: string | null;

  @Column("varchar", { name: "DeptID", nullable: true, length: 36 })
  deptId: string | null;

  @Column("varchar", { name: "Position", nullable: true, length: 255 })
  position: string | null;

  @Column("varchar", { name: "RoleID", nullable: true, length: 36 })
  roleId: string | null;

  @Column("varchar", { name: "IP", nullable: true, length: 255 })
  ip: string | null;

  @Column("varchar", { name: "Password", nullable: true, length: 50 })
  password: string | null;

  @Column("varchar", { name: "RealName", nullable: true, length: 20 })
  realName: string | null;

  @Column("int", { name: "Rank", nullable: true, default: () => "'0'" })
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

  @Column("text", {
    name: "UnitUserPermission",
    nullable: true,
    comment: "单位数据权限",
  })
  unitUserPermission: string | null;

  @Column("text", {
    name: "UserDeptPermission",
    nullable: true,
    comment: "部门数据权限",
  })
  userDeptPermission: string | null;

  @Column("varchar", {
    name: "GH",
    nullable: true,
    comment: "工号",
    length: 255,
  })
  gh: string | null;

  @Column("varchar", {
    name: "DWBM",
    nullable: true,
    comment: "单位编码",
    length: 255,
  })
  dwbm: string | null;

  @Column("varchar", { name: "MD5", nullable: true, length: 255 })
  md5: string | null;

  @Column("varchar", {
    name: "LoginCount",
    nullable: true,
    comment: "登录失败次数",
    length: 255,
  })
  loginCount: string | null;

  @Column("varchar", {
    name: "IsLock",
    nullable: true,
    comment: "用户锁定",
    length: 255,
  })
  isLock: string | null;

  @Column("varchar", {
    name: "CandidateUser",
    nullable: true,
    comment: "候选用户",
    length: 255,
  })
  candidateUser: string | null;

  @Column("varchar", {
    name: "UpdatePwdTime",
    nullable: true,
    comment: "更新密码时间",
    length: 255,
  })
  updatePwdTime: string | null;

  @Column("varchar", { name: "Mac", nullable: true, length: 255 })
  mac: string | null;

  @Column("varchar", {
    name: "Tel",
    nullable: true,
    comment: "联系方式",
    length: 255,
  })
  tel: string | null;

  @Column("varchar", {
    name: "UID",
    nullable: true,
    comment: "唯一识别码",
    length: 255,
  })
  uid: string | null;

  @Column("longtext", { name: "Signature", nullable: true, comment: "签名" })
  signature: string | null;

  @Column("longtext", { name: "Photo", nullable: true, comment: "照片" })
  photo: string | null;

  @Column("varchar", {
    name: "SecretLevel",
    nullable: true,
    comment: "密级级别",
    length: 255,
  })
  secretLevel: string | null;
}
