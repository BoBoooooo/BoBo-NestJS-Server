import { Column, Entity } from "typeorm";

@Entity("tourlayout", { schema: "sw3k_tm" })
export class Tourlayout {
  @Column("char", { primary: true, name: "ID", length: 36 })
  id: string;

  @Column("char", {
    name: "TourId",
    nullable: true,
    comment: "巡视ID",
    length: 36,
  })
  tourId: string | null;

  @Column("char", {
    name: "TeamId",
    nullable: true,
    comment: "巡视组ID",
    length: 36,
  })
  teamId: string | null;

  @Column("char", {
    name: "PersonId",
    nullable: true,
    comment: "人员ID",
    length: 255,
  })
  personId: string | null;

  @Column("varchar", { name: "AffixSP", nullable: true, length: 255 })
  affixSp: string | null;

  @Column("varchar", { name: "AffixJD", nullable: true, length: 255 })
  affixJd: string | null;

  @Column("varchar", {
    name: "Type",
    nullable: true,
    comment:
      "岗位类型(组长、副组长、正处巡视专员、副处巡视专员、特聘巡视专员、巡视干部)",
    length: 255,
  })
  type: string | null;

  @Column("int", { name: "Log", nullable: true })
  log: number | null;

  @Column("int", { name: "Extend", nullable: true, comment: "1代表被承接过" })
  extend: number | null;

  @Column("varchar", { name: "TurnOne", nullable: true, length: 255 })
  turnOne: string | null;

  @Column("int", { name: "Rank", nullable: true })
  rank: number | null;

  @Column("bit", { name: "IsDeleted", nullable: true })
  isDeleted: boolean | null;

  @Column("timestamp", { name: "Timestamp", nullable: true })
  timestamp: Date | null;
}
