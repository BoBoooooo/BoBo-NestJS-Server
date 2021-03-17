import { Column, Entity } from 'typeorm'

@Entity('ad_codelist_type', { schema: 'nest' })
export class AdCodelistType {
  @Column('varchar', { primary: true, name: 'id', comment: 'ID', length: 36 })
  id: string

  @Column('varchar', {
    name: 'typeName',
    nullable: true,
    comment: '字典类型名称',
    length: 100
  })
  typeName: string | null

  @Column('varchar', {
    name: 'remark',
    nullable: true,
    comment: '备注',
    length: 255
  })
  remark: string | null

  @Column('varchar', {
    name: 'parentId',
    nullable: true,
    comment: '父级ID',
    length: 36
  })
  parentId: string | null

  @Column('timestamp', {
    name: 'timestamp',
    comment: '创建时间',
    default: () => 'CURRENT_TIMESTAMP'
  })
  timestamp: Date

  @Column('decimal', {
    name: 'order',
    nullable: true,
    comment: '排序',
    precision: 8,
    scale: 0
  })
  order: string | null
}
