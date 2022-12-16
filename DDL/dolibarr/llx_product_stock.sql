create table llx_product_stock
(
    rowid       int auto_increment
        primary key,
    tms         timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_product  int                                 not null,
    fk_entrepot int                                 not null,
    reel        double                              null,
    import_key  varchar(14)                         null,
    constraint uk_product_stock
        unique (fk_product, fk_entrepot)
)
    engine = InnoDB;

create index idx_product_stock_fk_entrepot
    on llx_product_stock (fk_entrepot);

create index idx_product_stock_fk_product
    on llx_product_stock (fk_product);

