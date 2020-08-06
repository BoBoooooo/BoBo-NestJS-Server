import { Column, Entity } from "typeorm";

@Entity("rolemenu", { schema: "sw3k_tm" })
export class Rolemenu {
  @Column("char", { primary: true, name: "ID", length: 36 })
  id: string;

  @Column("char", { name: "RoleID", nullable: true, length: 36 })
  roleId: string | null;

  @Column("char", { name: "MenuID", nullable: true, length: 36 })
  menuId: string | null;

  @Column("bit", { name: "IsDeleted", default: () => "'b'0''" })
  isDeleted: boolean;

  @Column("timestamp", { name: "Timestamp", nullable: true })
  timestamp: Date | null;
}
