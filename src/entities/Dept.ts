import { Column, Entity } from "typeorm";

@Entity("dept", { schema: "sw3k_tm" })
export class Dept {
  @Column("char", { primary: true, name: "ID", length: 36 })
  id: string;

  @Column("varchar", { name: "DeptName", nullable: true, length: 50 })
  deptName: string | null;

  @Column("char", { name: "UserID", nullable: true, length: 36 })
  userId: string | null;

  @Column("char", { name: "ParentID", nullable: true, length: 36 })
  parentId: string | null;

  @Column("int", { name: "Sequence", nullable: true, default: () => "'0'" })
  sequence: number | null;

  @Column("bit", { name: "IsDeleted", default: () => "'b'0''" })
  isDeleted: boolean;

  @Column("timestamp", { name: "Timestamp", nullable: true })
  timestamp: Date | null;
}
