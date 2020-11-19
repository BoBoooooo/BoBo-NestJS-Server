import { Column, Entity } from 'typeorm'

@Entity('role', { schema: 'nest' })
export class Role {
  @Column('char', { primary: true, name: 'id', length: 36 })
  id: string

  @Column('text', { name: 'roleName', nullable: true, comment: '角色名' })
  roleName: string | null

  @Column('text', { name: 'roleAuthName', nullable: true, comment: '权限' })
  roleAuthName: string | null

  @Column('longtext', {
    name: 'roleAuthNameDict',
    nullable: true,
    comment: '权限名称'
  })
  roleAuthNameDict: string | null

  @Column('int', { name: 'rank', nullable: true, comment: '排序' })
  rank: number | null

  @Column('timestamp', {
    name: 'timestamp',
    nullable: false,
    comment: '创建时间',
    default: () => 'CURRENT_TIMESTAMP'
  })
  timestamp: Date
}
