import { Column, Entity } from "typeorm";

@Entity("tourunit", { schema: "sw3k_tm" })
export class Tourunit {
  @Column("char", { primary: true, name: "ID", length: 36 })
  id: string;

  @Column("char", { name: "HandleDept", nullable: true, length: 36 })
  handleDept: string | null;

  @Column("char", { name: "HandleStaff", nullable: true, length: 36 })
  handleStaff: string | null;

  @Column("varchar", {
    name: "TourName",
    nullable: true,
    comment: "巡视标准名",
    length: 255,
  })
  tourName: string | null;

  @Column("varchar", {
    name: "Session",
    nullable: true,
    comment: "届次",
    length: 255,
  })
  session: string | null;

  @Column("varchar", {
    name: "Turn",
    nullable: true,
    comment: "轮次",
    length: 255,
  })
  turn: string | null;

  @Column("varchar", {
    name: "Year",
    nullable: true,
    comment: "年度",
    length: 255,
  })
  year: string | null;

  @Column("varchar", {
    name: "TourTime",
    nullable: true,
    comment: "巡视时间",
    length: 255,
  })
  tourTime: string | null;

  @Column("text", { name: "ObjUnit", nullable: true, comment: "巡视对象" })
  objUnit: string | null;

  @Column("text", { name: "ObjUnitName", nullable: true, comment: "巡视对象" })
  objUnitName: string | null;

  @Column("text", { name: "Remark", nullable: true, comment: "备注" })
  remark: string | null;

  @Column("bit", { name: "IsDeleted", nullable: true })
  isDeleted: boolean | null;

  @Column("timestamp", { name: "Timestamp", nullable: true })
  timestamp: Date | null;
}
