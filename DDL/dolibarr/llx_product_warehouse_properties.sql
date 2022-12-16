create table llx_product_warehouse_properties
(
    rowid              int auto_increment
        primary key,
    tms                timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_product         int                                 not null,
    fk_entrepot        int                                 not null,
    seuil_stock_alerte float     default 0                 null,
    desiredstock       float     default 0                 null,
    import_key         varchar(14)                         null
)
    engine = InnoDB;

