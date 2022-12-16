create table dolibardev.llx_bom_bomline
(
    rowid                int auto_increment
        primary key,
    fk_bom               int                         not null,
    fk_product           int                         not null,
    fk_bom_child         int                         null,
    description          text                        null,
    import_key           varchar(14)                 null,
    qty                  double(24, 8)               not null,
    efficiency           double(8, 4) default 1.0000 not null,
    position             int                         not null,
    qty_frozen           smallint     default 0      null,
    disable_stock_change smallint     default 0      null,
    fk_unit              int                         null,
    constraint llx_bom_bomline_fk_bom
        foreign key (fk_bom) references dolibardev.llx_bom_bom (rowid)
);

create index idx_bom_bomline_fk_bom
    on dolibardev.llx_bom_bomline (fk_bom);

create index idx_bom_bomline_fk_product
    on dolibardev.llx_bom_bomline (fk_product);

create index idx_bom_bomline_rowid
    on dolibardev.llx_bom_bomline (rowid);

