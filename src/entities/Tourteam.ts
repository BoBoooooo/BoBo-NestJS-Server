import { Column, Entity } from "typeorm";

@Entity("tourteam", { schema: "sw3k_tm" })
export class Tourteam {
  @Column("char", { primary: true, name: "ID", length: 36 })
  id: string;

  @Column("char", { name: "HandleDept", nullable: true, length: 36 })
  handleDept: string | null;

  @Column("char", { name: "HandleStaff", nullable: true, length: 36 })
  handleStaff: string | null;

  @Column("varchar", {
    name: "TeamName",
    nullable: true,
    comment: "巡视组名",
    length: 255,
  })
  teamName: string | null;

  @Column("varchar", {
    name: "TeamType",
    nullable: true,
    comment: "类型(巡视组、“机动式”巡视组)",
    length: 255,
  })
  teamType: string | null;

  @Column("int", {
    name: "TotalNum",
    nullable: true,
    comment: "总人数",
    default: () => "'0'",
  })
  totalNum: number | null;

  @Column("int", {
    name: "DeputyNum",
    nullable: true,
    comment: "副组长人数",
    default: () => "'0'",
  })
  deputyNum: number | null;

  @Column("text", { name: "Remark", nullable: true, comment: "备注" })
  remark: string | null;

  @Column("bit", { name: "IsDeleted", nullable: true })
  isDeleted: boolean | null;

  @Column("timestamp", { name: "Timestamp", nullable: true })
  timestamp: Date | null;
}
