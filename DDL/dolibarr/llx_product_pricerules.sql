create table llx_product_pricerules
(
    rowid           int auto_increment
        primary key,
    level           int    not null,
    fk_level        int    not null,
    var_percent     double not null,
    var_min_percent double not null,
    constraint unique_level
        unique (level)
)
    engine = InnoDB;

