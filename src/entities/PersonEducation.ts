import { Column, Entity } from 'typeorm'

@Entity('person_education', { schema: 'nest' })
export class PersonEducation {
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
    name: 'school',
    nullable: true,
    comment: '学校',
    length: 255
  })
  school: string | null

  @Column('varchar', {
    name: 'type',
    nullable: true,
    comment: '学校类型',
    length: 255
  })
  type: string | null

  @Column('text', { name: 'remark', nullable: true, comment: '备注' })
  remark: string | null

  @Column('datetime', { name: 'timestamp', nullable: true })
  timestamp: Date | null
}
