create table llx_c_exp_tax_range
(
    rowid            int auto_increment
        primary key,
    fk_c_exp_tax_cat int    default 1 not null,
    range_ik         double default 0 not null,
    entity           int    default 1 not null,
    active           int    default 1 not null
)
    engine = InnoDB;

