create table dolibardev.llx_expensereport_ik
(
    rowid            int auto_increment
        primary key,
    datec            datetime                              null,
    tms              timestamp default current_timestamp() not null on update current_timestamp(),
    fk_c_exp_tax_cat int       default 0                   not null,
    fk_range         int       default 0                   not null,
    coef             double    default 0                   not null,
    ikoffset         double    default 0                   not null,
    active           int       default 1                   null
);

