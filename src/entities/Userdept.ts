import { Column, Entity } from "typeorm";

@Entity("userdept", { schema: "sw3k_tm" })
export class Userdept {
  @Column("char", { primary: true, name: "ID", length: 36 })
  id: string;

  @Column("char", { name: "UserID", nullable: true, length: 36 })
  userId: string | null;

  @Column("char", { name: "DeptID", nullable: true, length: 36 })
  deptId: string | null;

  @Column("bit", { name: "IsDeleted", default: () => "'b'0''" })
  isDeleted: boolean;

  @Column("timestamp", { name: "Timestamp", nullable: true })
  timestamp: Date | null;
}
