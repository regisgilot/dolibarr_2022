create table dolibardev.llx_inventorydet
(
    rowid         int auto_increment
        primary key,
    datec         datetime                              null,
    tms           timestamp default current_timestamp() not null on update current_timestamp(),
    fk_inventory  int       default 0                   null,
    fk_warehouse  int       default 0                   null,
    fk_product    int       default 0                   null,
    batch         varchar(30)                           null,
    qty_view      double                                null,
    qty_stock     double                                null,
    qty_regulated double                                null,
    fk_movement   int                                   null,
    pmp_real      double                                null,
    pmp_expected  double                                null,
    constraint uk_inventorydet
        unique (fk_inventory, fk_warehouse, fk_product, batch)
);

create index idx_inventorydet_datec
    on dolibardev.llx_inventorydet (datec);

create index idx_inventorydet_fk_inventory
    on dolibardev.llx_inventorydet (fk_inventory);

create index idx_inventorydet_tms
    on dolibardev.llx_inventorydet (tms);

