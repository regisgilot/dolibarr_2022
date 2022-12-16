create table llx_accounting_groups_account
(
    rowid                    int auto_increment
        primary key,
    fk_accounting_account    int not null,
    fk_c_accounting_category int not null
)
    engine = InnoDB;

