import { Column, Entity, Index } from 'typeorm'

@Index('index_deptid', ['deptId'], {})
@Index('index_id', ['id'], {})
@Index('index_username', ['userName'], {})
@Entity('users', { schema: 'nest' })
export class Users {
  @Column('varchar', { primary: true, name: 'id', length: 36 })
  id: string

  @Column('varchar', {
    name: 'userName',
    nullable: true,
    comment: '用户名',
    length: 50
  })
  userName: string | null

  @Column('varchar', { name: 'deptId', nullable: true, length: 36 })
  deptId: string | null

  @Column('varchar', { name: 'roleId', nullable: true, length: 36 })
  roleId: string | null

  @Column('varchar', {
    name: 'password',
    nullable: true,
    comment: '密码',
    length: 50
  })
  password: string | null

  @Column('varchar', {
    name: 'realName',
    nullable: true,
    comment: '真实姓名',
    length: 20
  })
  realName: string | null

  @Column('int', {
    name: 'rank',
    nullable: true,
    comment: '排序码',
    default: () => "'0'"
  })
  rank: number | null

  @Column('longtext', { name: 'photo', nullable: true, comment: '照片' })
  photo: string | null

  @Column('timestamp', {
    name: 'timestamp',
    comment: '创建时间',
    default: () => 'CURRENT_TIMESTAMP'
  })
  timestamp: Date
}
