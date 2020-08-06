import { Column, Entity } from "typeorm";

@Entity("affix", { schema: "sw3k_tm" })
export class Affix {
  @Column("char", { primary: true, name: "ID", length: 36 })
  id: string;

  @Column("char", {
    name: "MasterID",
    nullable: true,
    comment: "该条内容ID",
    length: 36,
  })
  masterId: string | null;

  @Column("char", { name: "Prev", nullable: true, length: 36 })
  prev: string | null;

  @Column("char", { name: "Next", nullable: true, length: 36 })
  next: string | null;

  @Column("varchar", {
    name: "Type",
    nullable: true,
    comment:
      "年度考核附件assess\r\n重大事项核查结果declare\r\n第一种形态firstForm\r\n问责Account\r\n立案呈批报告CaseApproval\r\n立案决定书CaseDecision\r\n调查报告CaseInvestigation\r\n审理报告CaseAdjudication\r\n处分决定CaseSanction\r\n执行情况CaseExecution\r\n违法犯罪Crime\r\n组织调整Adjust\r\n行贿Bribe\r\n审计audit\r\n信访举报letter\r\n问题线索clue\r\n涉案款物Asset",
    length: 50,
  })
  type: string | null;

  @Column("text", { name: "FileName", nullable: true })
  fileName: string | null;

  @Column("text", { name: "SaveName" })
  saveName: string;

  @Column("text", { name: "FileExtension", nullable: true })
  fileExtension: string | null;

  @Column("text", { name: "ContentType", nullable: true })
  contentType: string | null;

  @Column("longblob", { name: "Content", nullable: true })
  content: Buffer | null;

  @Column("bit", { name: "IsDeleted", default: () => "'b'0''" })
  isDeleted: boolean;

  @Column("timestamp", { name: "Timestamp", nullable: true })
  timestamp: Date | null;
}
