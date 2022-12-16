create table llx_mrp_production
(
    rowid                int auto_increment
        primary key,
    fk_mo                int                                 not null,
    origin_id            int                                 null,
    origin_type          varchar(10)                         null,
    position             int       default 0                 not null,
    fk_product           int                                 not null,
    fk_warehouse         int                                 null,
    qty                  double    default 1                 not null,
    qty_frozen           smallint  default 0                 null,
    disable_stock_change smallint  default 0                 null,
    batch                varchar(128)                        null,
    role                 varchar(10)                         null,
    fk_mrp_production    int                                 null,
    fk_stock_movement    int                                 null,
    date_creation        datetime                            not null,
    tms                  timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_user_creat        int                                 not null,
    fk_user_modif        int                                 null,
    import_key           varchar(14)                         null,
    constraint fk_mrp_production_mo
        foreign key (fk_mo) references llx_mrp_mo (rowid),
    constraint fk_mrp_production_product
        foreign key (fk_product) references llx_product (rowid),
    constraint fk_mrp_production_stock_movement
        foreign key (fk_stock_movement) references llx_stock_mouvement (rowid)
)
    engine = InnoDB;

create index idx_mrp_production_fk_mo
    on llx_mrp_production (fk_mo);

