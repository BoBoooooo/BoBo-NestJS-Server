import { Column, Entity, Index } from "typeorm";
import { BoolBitTransformer } from "src/core/transform";

@Index("index_id", ["id"], { unique: true })
@Entity("dept", { schema: "nest" })
export class Dept {
  @Column("varchar", { primary: true, name: "ID", length: 36 })
  id: string;

  @Column("varchar", {
    name: "Name",
    nullable: true,
    comment: "部门名称",
    length: 255,
  })
  name: string | null;

  @Column("int", { name: "Rank", nullable: true, comment: "排序码" })
  rank: number | null;

  @Column("varchar", {
    name: "ParentId",
    nullable: true,
    comment: "上级ID",
    length: 36,
  })
  parentId: string | null;

 
  @Column("bit", {
    name: "IsDeleted",
    comment: "记录删除标志 [0]-未删除;[1]-逻辑删除",
    default: () => "'b'0''",
    transformer: new BoolBitTransformer()
  })
  isDeleted: boolean;


  @Column("datetime", {
    name: "Timestamp",
    nullable: true,
    comment: "创建时间",
  })
  timestamp: Date | null;
}
