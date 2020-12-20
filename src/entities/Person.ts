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

  @Column('varchar', {
    name: 'education',
    nullable: true,
    comment: '文化程度',
    length: 255
  })
  education: string | null

  @Column('varchar', {
    name: 'major',
    nullable: true,
    comment: '专业',
    length: 255
  })
  major: string | null

  @Column('varchar', {
    name: 'mobile',
    nullable: true,
    comment: '联系方式',
    length: 100
  })
  mobile: string | null

  @Column('varchar', {
    name: 'birthdate',
    nullable: true,
    comment: '出生年月',
    length: 100
  })
  birthdate: string | null

  @Column('varchar', {
    name: 'sex',
    nullable: true,
    comment: '性别',
    length: 10
  })
  sex: string | null
}
