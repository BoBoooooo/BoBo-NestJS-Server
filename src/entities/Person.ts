import { Column, Entity, Index } from "typeorm";

@Index("Name", ["name"], {})
@Entity("person", { schema: "sw3k_tm" })
export class Person {
  @Column("char", { primary: true, name: "ID", length: 36 })
  id: string;

  @Column("char", { name: "HandleDept", nullable: true, length: 36 })
  handleDept: string | null;

  @Column("char", { name: "HandleStaff", nullable: true, length: 36 })
  handleStaff: string | null;

  @Column("char", {
    name: "No",
    nullable: true,
    comment: "统一编号0  ",
    length: 255,
  })
  no: string | null;

  @Column("varchar", {
    name: "Name",
    nullable: true,
    comment: "姓名",
    length: 255,
  })
  name: string | null;

  @Column("varchar", {
    name: "WorkLevel",
    nullable: true,
    comment: "职级0  厅处科",
    length: 255,
  })
  workLevel: string | null;

  @Column("varchar", {
    name: "Workduty",
    nullable: true,
    comment: "行政职务",
    length: 255,
  })
  workduty: string | null;

  @Column("varchar", {
    name: "WorkUnit",
    nullable: true,
    comment: "工作单位",
    length: 255,
  })
  workUnit: string | null;

  @Column("varchar", {
    name: "Gender",
    nullable: true,
    comment: "性别",
    length: 255,
  })
  gender: string | null;

  @Column("varchar", {
    name: "DOB",
    nullable: true,
    comment: "出生年月",
    length: 255,
  })
  dob: string | null;

  @Column("int", {
    name: "Age",
    nullable: true,
    comment: "年龄 0",
    default: () => "'0'",
  })
  age: number | null;

  @Column("varchar", {
    name: "DutyTime",
    nullable: true,
    comment: "现职务时间",
    length: 255,
  })
  dutyTime: string | null;

  @Column("varchar", {
    name: "LevelTime",
    nullable: true,
    comment: "现职级时间",
    length: 255,
  })
  levelTime: string | null;

  @Column("varchar", {
    name: "PartyTime",
    nullable: true,
    comment: "入党时间",
    length: 255,
  })
  partyTime: string | null;

  @Column("int", {
    name: "PartyAge",
    nullable: true,
    comment: "党龄 0",
    default: () => "'0'",
  })
  partyAge: number | null;

  @Column("varchar", {
    name: "JobDuty",
    nullable: true,
    comment: "专业技术职务",
    length: 255,
  })
  jobDuty: string | null;

  @Column("varchar", { name: "WorkTime", nullable: true, length: 255 })
  workTime: string | null;

  @Column("varchar", {
    name: "Specialty",
    nullable: true,
    comment: "专业专长",
    length: 255,
  })
  specialty: string | null;

  @Column("varchar", {
    name: "Origin",
    nullable: true,
    comment: "籍贯",
    length: 255,
  })
  origin: string | null;

  @Column("varchar", {
    name: "BirthPlace",
    nullable: true,
    comment: "出生地",
    length: 255,
  })
  birthPlace: string | null;

  @Column("varchar", {
    name: "GraduateSchool",
    nullable: true,
    comment: "毕业院校",
    length: 255,
  })
  graduateSchool: string | null;

  @Column("varchar", {
    name: "Education",
    nullable: true,
    comment: "学历",
    length: 255,
  })
  education: string | null;

  @Column("varchar", {
    name: "JobSchool",
    nullable: true,
    comment: "在职毕业院校",
    length: 255,
  })
  jobSchool: string | null;

  @Column("varchar", {
    name: "JobEducation",
    nullable: true,
    comment: "在职教育学历",
    length: 255,
  })
  jobEducation: string | null;

  @Column("varchar", {
    name: "Health",
    nullable: true,
    comment: "健康状况",
    length: 255,
  })
  health: string | null;

  @Column("varchar", {
    name: "Phone",
    nullable: true,
    comment: "手机号码",
    length: 255,
  })
  phone: string | null;

  @Column("varchar", {
    name: "IDCard",
    nullable: true,
    comment: "身份证号",
    length: 255,
  })
  idCard: string | null;

  @Column("varchar", {
    name: "Address",
    nullable: true,
    comment: "家庭住址",
    length: 255,
  })
  address: string | null;

  @Column("text", { name: "Resume", nullable: true, comment: "主要工作经历" })
  resume: string | null;

  @Column("text", { name: "Remark", nullable: true, comment: "备注" })
  remark: string | null;

  @Column("varchar", {
    name: "Photo",
    nullable: true,
    comment: "电子照片",
    length: 255,
  })
  photo: string | null;

  @Column("varchar", {
    name: "Turn",
    nullable: true,
    comment: "拟参加巡视轮次",
    length: 255,
    default: () => "'0'",
  })
  turn: string | null;

  @Column("int", {
    name: "IsValid",
    nullable: true,
    comment: "有效状态 ( 有效1，无效0，2关注)",
    default: () => "'0'",
  })
  isValid: number | null;

  @Column("varchar", {
    name: "IsPartTime",
    nullable: true,
    comment: "是否在库",
    length: 255,
    default: () => "'0'",
  })
  isPartTime: string | null;

  @Column("varchar", {
    name: "Archive",
    nullable: true,
    comment: "人员库名称 (三个库)",
    length: 255,
  })
  archive: string | null;

  @Column("varchar", {
    name: "Type",
    nullable: true,
    comment: "来源类型 ( )",
    length: 255,
  })
  type: string | null;

  @Column("varchar", {
    name: "PDF",
    nullable: true,
    comment: "审批表pdf",
    length: 255,
  })
  pdf: string | null;

  @Column("varchar", {
    name: "Nation",
    nullable: true,
    comment: "民族",
    length: 255,
  })
  nation: string | null;

  @Column("varchar", { name: "Word", nullable: true, length: 255 })
  word: string | null;

  @Column("varchar", { name: "Affix", nullable: true, length: 255 })
  affix: string | null;

  @Column("int", { name: "sort", nullable: true })
  sort: number | null;

  @Column("varchar", { name: "TeamId", nullable: true, length: 255 })
  teamId: string | null;

  @Column("varchar", {
    name: "AvoidObjUnit",
    nullable: true,
    comment: "回避对象",
    length: 255,
  })
  avoidObjUnit: string | null;

  @Column("varchar", {
    name: "WorkArea",
    nullable: true,
    comment: "工作所在市",
    length: 255,
  })
  workArea: string | null;

  @Column("int", {
    name: "IsExperience",
    nullable: true,
    comment: "巡视巡察经验",
  })
  isExperience: number | null;

  @Column("bit", { name: "IsDeleted", nullable: true })
  isDeleted: boolean | null;

  @Column("timestamp", { name: "Timestamp", nullable: true })
  timestamp: Date | null;
}
