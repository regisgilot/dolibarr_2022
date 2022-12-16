create table llx_c_product_nature
(
    rowid  int auto_increment
        primary key,
    code   tinyint           not null,
    label  varchar(128)      null,
    active tinyint default 1 not null,
    constraint uk_c_product_nature
        unique (code)
)
    engine = InnoDB;

