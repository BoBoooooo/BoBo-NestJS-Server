import { Column, Entity } from "typeorm";

@Entity("dict1", { schema: "sw3k_tm" })
export class Dict1 {
  @Column("char", { primary: true, name: "ID", length: 36 })
  id: string;

  @Column("varchar", { name: "Session", nullable: true, length: 255 })
  session: string | null;

  @Column("varchar", { name: "Turn", nullable: true, length: 255 })
  turn: string | null;

  @Column("varchar", { name: "Year", nullable: true, length: 255 })
  year: string | null;

  @Column("int", { name: "No", nullable: true })
  no: number | null;

  @Column("int", { name: "Rank", nullable: true })
  rank: number | null;

  @Column("varchar", { name: "IsCurrent", nullable: true, length: 255 })
  isCurrent: string | null;

  @Column("bit", { name: "IsDeleted", nullable: true })
  isDeleted: boolean | null;

  @Column("timestamp", { name: "Timestamp", nullable: true })
  timestamp: Date | null;
}
