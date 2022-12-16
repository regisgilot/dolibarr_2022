create table llx_expensereport_rules
(
    rowid                   int auto_increment
        primary key,
    datec                   datetime                            null,
    tms                     timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    dates                   datetime                            not null,
    datee                   datetime                            not null,
    amount                  double(24, 8)                       not null,
    restrictive             tinyint                             not null,
    fk_user                 int                                 null,
    fk_usergroup            int                                 null,
    fk_c_type_fees          int                                 not null,
    code_expense_rules_type varchar(50)                         not null,
    is_for_all              tinyint   default 0                 null,
    entity                  int       default 1                 null
)
    engine = InnoDB;

