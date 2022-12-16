create table llx_c_price_expression
(
    rowid      int auto_increment
        primary key,
    title      varchar(20)  not null,
    expression varchar(255) not null
)
    engine = InnoDB;

