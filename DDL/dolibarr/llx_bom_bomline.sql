create table llx_bom_bomline
(
    rowid                int auto_increment
        primary key,
    fk_bom               int                              not null,
    fk_product           int                              not null,
    fk_bom_child         int                              null,
    description          text                             null,
    import_key           varchar(14)                      null,
    qty                  double(24, 8)                    not null,
    qty_frozen           smallint      default 0          null,
    disable_stock_change smallint      default 0          null,
    efficiency           double(24, 8) default 1.00000000 not null,
    position             int           default 0          not null,
    constraint llx_bom_bomline_fk_bom
        foreign key (fk_bom) references llx_bom_bom (rowid)
)
    engine = InnoDB;

create index idx_bom_bomline_fk_bom
    on llx_bom_bomline (fk_bom);

create index idx_bom_bomline_fk_product
    on llx_bom_bomline (fk_product);

create index idx_bom_bomline_rowid
    on llx_bom_bomline (rowid);

