import { Column, Entity } from "typeorm";

@Entity("menu", { schema: "sw3k_tm" })
export class Menu {
  @Column("char", { primary: true, name: "ID", length: 36 })
  id: string;

  @Column("varchar", { name: "Name", nullable: true, length: 50 })
  name: string | null;

  @Column("varchar", { name: "Icon", nullable: true, length: 20 })
  icon: string | null;

  @Column("char", { name: "ParentID", nullable: true, length: 36 })
  parentId: string | null;

  @Column("varchar", { name: "Url", nullable: true, length: 200 })
  url: string | null;

  @Column("int", { name: "Sequence", nullable: true, default: () => "'0'" })
  sequence: number | null;

  @Column("timestamp", { name: "Timestamp", nullable: true })
  timestamp: Date | null;
}
