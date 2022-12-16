create table dolibardev.llx_product_pricerules
(
    rowid           int auto_increment
        primary key,
    level           int   not null,
    fk_level        int   not null,
    var_percent     float not null,
    var_min_percent float not null,
    constraint unique_level
        unique (level)
);

