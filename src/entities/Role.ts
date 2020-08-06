import { Column, Entity } from "typeorm";

@Entity("role", { schema: "sw3k_tm" })
export class Role {
  @Column("char", { primary: true, name: "ID", length: 36 })
  id: string;

  @Column("varchar", { name: "RoleName", nullable: true, length: 50 })
  roleName: string | null;

  @Column("int", { name: "Rank", nullable: true, default: () => "'0'" })
  rank: number | null;

  @Column("varchar", { name: "Url", nullable: true, length: 200 })
  url: string | null;

  @Column("bit", { name: "IsDeleted", default: () => "'b'0''" })
  isDeleted: boolean;

  @Column("timestamp", { name: "Timestamp", nullable: true })
  timestamp: Date | null;
}
