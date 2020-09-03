import { Column, Entity } from "typeorm";

@Entity("log", { schema: "nest" })
export class Log {
  @Column("char", { primary: true, name: "ID", length: 36 })
  id: string;

  @Column("char", { name: "UserID", nullable: true, length: 36 })
  userId: string | null;

  @Column("timestamp", { name: "OptTime", nullable: true })
  optTime: Date | null;

  @Column("varchar", { name: "IP", nullable: true, length: 20 })
  ip: string | null;

  @Column("varchar", { name: "Region", nullable: true, length: 50 })
  region: string | null;

  @Column("varchar", { name: "Account", nullable: true, length: 50 })
  account: string | null;

  @Column("varchar", { name: "OptType", nullable: true, length: 50 })
  optType: string | null;

  @Column("varchar", { name: "Content", nullable: true, length: 10000 })
  content: string | null;
}
