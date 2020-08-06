 
import { PrimaryGeneratedColumn, Column, Entity } from "typeorm";
 
@Entity()
export class Users {
  @PrimaryGeneratedColumn()
  id: number;
 
  @Column({length: 45})
  username: string;
  
  @Column({length: 45})
  password: string;
 
  @Column('int')
  age: number;
}
