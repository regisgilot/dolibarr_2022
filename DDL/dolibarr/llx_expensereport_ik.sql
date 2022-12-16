create table llx_expensereport_ik
(
    rowid            int auto_increment
        primary key,
    datec            datetime                            null,
    tms              timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_c_exp_tax_cat int       default 0                 not null,
    fk_range         int       default 0                 not null,
    coef             double    default 0                 not null,
    ikoffset         double    default 0                 not null,
    active           int       default 1                 null
)
    engine = InnoDB;

