import { Column, Entity, Index } from 'typeorm'

@Index('index_id', ['id'], { unique: true })
@Entity('dept', { schema: 'nest' })
export class Dept {
  @Column('varchar', { primary: true, name: 'id', length: 36 })
  id: string

  @Column('varchar', {
    name: 'name',
    nullable: true,
    comment: '部门名称',
    length: 255
  })
  name: string | null

  @Column('int', { name: 'rank', nullable: true, comment: '排序码' })
  rank: number | null

  @Column('varchar', {
    name: 'parentId',
    nullable: true,
    comment: '上级ID',
    length: 36
  })
  parentId: string | null

  @Column('timestamp', {
    name: 'timestamp',
    nullable: false,
    comment: '创建时间',
    default: () => 'CURRENT_TIMESTAMP'
  })
  timestamp: Date
}
