import { Column, Entity } from "typeorm";

@Entity("workcity", { schema: "sw3k_tm" })
export class Workcity {
  @Column("char", { primary: true, name: "ID", length: 36 })
  id: string;

  @Column("varchar", { name: "City", nullable: true, length: 255 })
  city: string | null;

  @Column("varchar", { name: "Near1", nullable: true, length: 255 })
  near1: string | null;

  @Column("varchar", { name: "Near2", nullable: true, length: 255 })
  near2: string | null;

  @Column("varchar", { name: "Near3", nullable: true, length: 255 })
  near3: string | null;
}
