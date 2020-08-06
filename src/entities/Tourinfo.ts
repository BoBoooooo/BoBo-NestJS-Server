import { Column, Entity } from "typeorm";

@Entity("tourinfo", { schema: "sw3k_tm" })
export class Tourinfo {
  @Column("char", { primary: true, name: "ID", length: 36 })
  id: string;

  @Column("char", { name: "TourUnitID", nullable: true, length: 36 })
  tourUnitId: string | null;

  @Column("text", { name: "ObjUnit", nullable: true })
  objUnit: string | null;

  @Column("text", { name: "ObjUnitName", nullable: true })
  objUnitName: string | null;

  @Column("char", { name: "TeamId", nullable: true, length: 36 })
  teamId: string | null;

  @Column("bit", { name: "IsDeleted", nullable: true })
  isDeleted: boolean | null;

  @Column("timestamp", { name: "Timestamp", nullable: true })
  timestamp: Date | null;
}
