import { Column, Entity } from "typeorm";

@Entity("unit", { schema: "sw3k_tm" })
export class Unit {
  @Column("char", { primary: true, name: "ID", length: 36 })
  id: string;

  @Column("varchar", { name: "UnitName", nullable: true, length: 255 })
  unitName: string | null;

  @Column("char", { name: "ParentID", nullable: true, length: 36 })
  parentId: string | null;

  @Column("int", { name: "Rank", nullable: true })
  rank: number | null;

  @Column("bit", { name: "IsDeleted", nullable: true })
  isDeleted: boolean | null;

  @Column("timestamp", { name: "Timestamp", nullable: true })
  timestamp: Date | null;
}
