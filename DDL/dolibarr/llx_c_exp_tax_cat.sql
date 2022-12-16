create table llx_c_exp_tax_cat
(
    rowid  int auto_increment
        primary key,
    label  varchar(128)  not null,
    entity int default 1 not null,
    active int default 1 not null
)
    engine = InnoDB;

