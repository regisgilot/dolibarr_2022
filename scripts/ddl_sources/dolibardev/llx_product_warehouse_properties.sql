create table dolibardev.llx_product_warehouse_properties
(
    rowid              int auto_increment
        primary key,
    tms                timestamp default current_timestamp() not null on update current_timestamp(),
    fk_product         int                                   not null,
    fk_entrepot        int                                   not null,
    seuil_stock_alerte float                                 null,
    desiredstock       float                                 null,
    import_key         varchar(14)                           null
);

