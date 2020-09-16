import { Column, Entity, Index } from 'typeorm';
import { BoolBitTransformer } from 'src/core/transform';

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

  @Column('bit', {
    name: 'isDeleted',
    comment: '记录删除标志 [0]-未删除;[1]-逻辑删除',
    default: () => "'b'0''",
    transformer: new BoolBitTransformer(),
  })
  isDeleted: boolean;

  @Column('datetime', {
    name: 'timestamp',
    nullable: true,
    comment: '创建时间',
  })
  timestamp: Date | null;

  @Column('longtext', { name: 'photo', nullable: true, comment: '照片' })
  photo: string | null;
}
