create table dolibardev.llx_product_stock
(
    rowid       int auto_increment
        primary key,
    tms         timestamp default current_timestamp() not null on update current_timestamp(),
    fk_product  int                                   not null,
    fk_entrepot int                                   not null,
    reel        double                                null,
    import_key  varchar(14)                           null,
    constraint uk_product_stock
        unique (fk_product, fk_entrepot)
)
    charset = latin1;

create index idx_product_stock_fk_entrepot
    on dolibardev.llx_product_stock (fk_entrepot);

create index idx_product_stock_fk_product
    on dolibardev.llx_product_stock (fk_product);

