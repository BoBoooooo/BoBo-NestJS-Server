import { Column, Entity, Index } from 'typeorm';

@Index('index_id', ['id'], {})
@Index('index_username', ['userName'], {})
@Index('index_deptid', ['deptId'], {})
@Entity('users', { schema: 'nest' })
export class Users {
  @Column('varchar', { primary: true, name: 'id', length: 36 })
  id: string;

  @Column('varchar', {
    name: 'userName',
    comment: '用户名',
    nullable: true,
    length: 50,
  })
  userName: string | null;

  @Column('varchar', { name: 'deptId', nullable: true, length: 36 })
  deptId: string | null;

  @Column('varchar', { name: 'roleId', nullable: true, length: 36 })
  roleId: string | null;

  @Column('varchar', {
    name: 'password',
    comment: '密码',
    nullable: true,
    length: 50,
  })
  password: string | null;

  @Column('varchar', {
    name: 'realName',
    comment: '真实姓名',
    nullable: true,
    length: 20,
  })
  realName: string | null;

  @Column('int', {
    name: 'rank',
    comment: '排序码',
    nullable: true,
    default: () => "'0'",
  })
  rank: number | null;

  @Column("timestamp", {
    name: "timestamp",
    nullable: false,
    comment: "创建时间",
    default: () => 'CURRENT_TIMESTAMP',
  })
  timestamp: Date;

  @Column('longtext', { name: 'photo', nullable: true, comment: '照片' })
  photo: string | null;
}
