import { Column, Entity } from 'typeorm'

@Entity('person_resume', { schema: 'nest' })
export class PersonResume {
  @Column('char', { primary: true, name: 'id', length: 36 })
  id: string

  @Column('varchar', { name: 'personid', nullable: true, length: 255 })
  personid: string | null

  @Column('varchar', {
    name: 'time',
    nullable: true,
    comment: '起止时间',
    length: 255
  })
  time: string | null

  @Column('varchar', {
    name: 'workunit',
    nullable: true,
    comment: '工作单位',
    length: 255
  })
  workunit: string | null

  @Column('varchar', {
    name: 'workduty',
    nullable: true,
    comment: '职务',
    length: 255
  })
  workduty: string | null

  @Column('text', { name: 'remark', nullable: true, comment: '备注' })
  remark: string | null

  @Column('datetime', { name: 'timestamp', nullable: true })
  timestamp: Date | null
}
