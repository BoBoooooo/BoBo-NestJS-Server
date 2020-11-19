import { Column, Entity } from 'typeorm'

@Entity('form', { schema: 'nest' })
export class Form {
  @Column('char', { primary: true, name: 'id', length: 36 })
  id: string

  @Column('varchar', {
    name: 'tableName',
    nullable: true,
    comment: '表名',
    length: 255
  })
  tableName: string | null

  @Column('longtext', { name: 'formJson', nullable: true, comment: '数据' })
  formJson: string | null

  @Column('text', { name: 'position', nullable: true, comment: '使用位置' })
  position: string | null

  @Column('timestamp', {
    name: 'timestamp',
    nullable: false,
    comment: '创建时间',
    default: () => 'CURRENT_TIMESTAMP'
  })
  timestamp: Date
}
