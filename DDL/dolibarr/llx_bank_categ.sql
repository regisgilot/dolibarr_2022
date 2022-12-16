create table llx_bank_categ
(
    rowid  int auto_increment
        primary key,
    label  varchar(255)  null,
    entity int default 1 not null
)
    engine = InnoDB;

