import { Column, Entity, Index } from "typeorm";

@Index("index_id", ["id"], {})
@Index("index_username", ["userName"], {})
@Entity("users", { schema: "nest" })
export class Users {
  @Column("varchar", { primary: true, name: "ID", length: 36 })
  id: string;

  @Column("varchar", { name: "UserName", nullable: true, length: 50 })
  userName: string | null;

  @Column("varchar", { name: "Password", nullable: true, length: 50 })
  password: string | null;

  @Column("bit", { name: "IsDeleted" })
  isDeleted: boolean;

  @Column("datetime", { name: "Timestamp", nullable: true })
  timestamp: Date | null;
}
