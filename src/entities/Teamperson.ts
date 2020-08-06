import { Column, Entity } from "typeorm";

@Entity("teamperson", { schema: "sw3k_tm" })
export class Teamperson {
  @Column("char", { primary: true, name: "ID", length: 36 })
  id: string;

  @Column("char", { name: "PersonId", nullable: true, length: 36 })
  personId: string | null;

  @Column("char", { name: "TeamId", nullable: true, length: 36 })
  teamId: string | null;

  @Column("varchar", { name: "Type", nullable: true, length: 255 })
  type: string | null;

  @Column("bit", { name: "IsDeleted", nullable: true })
  isDeleted: boolean | null;

  @Column("timestamp", { name: "Timestamp", nullable: true })
  timestamp: Date | null;
}
