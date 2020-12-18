import { Column, Entity } from 'typeorm'

@Entity('person', { schema: 'nest' })
export class Person {
  @Column('char', { primary: true, name: 'id', comment: '主键', length: 36 })
  id: string

  @Column('varchar', {
    name: 'personname',
    nullable: true,
    comment: '姓名',
    length: 255
  })
  personname: string | null

  @Column('varchar', {
    name: 'deptname',
    nullable: true,
    comment: '所在部门',
    length: 255
  })
  deptname: string | null

  @Column('varchar', {
    name: 'salary',
    nullable: true,
    comment: '薪资',
    length: 255
  })
  salary: string | null

  @Column('varchar', {
    name: 'post',
    nullable: true,
    comment: '岗位',
    length: 255
  })
  post: string | null

  @Column('varchar', {
    name: 'level',
    nullable: true,
    comment: '职级',
    length: 255
  })
  level: string | null

  @Column('datetime', { name: 'timestamp', nullable: true, comment: '时间戳' })
  timestamp: Date | null

  @Column('varchar', {
    name: 'jobtime',
    nullable: true,
    comment: '入职时间',
    length: 255
  })
  jobtime: string | null

  @Column('varchar', {
    name: 'jobno',
    nullable: true,
    comment: '工号',
    length: 255
  })
  jobno: string | null
}
