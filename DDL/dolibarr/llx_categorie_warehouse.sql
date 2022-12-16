create table llx_categorie_warehouse
(
    fk_categorie int         not null,
    fk_warehouse int         not null,
    import_key   varchar(14) null,
    primary key (fk_categorie, fk_warehouse),
    constraint fk_categorie_warehouse_categorie_rowid
        foreign key (fk_categorie) references llx_categorie (rowid),
    constraint fk_categorie_warehouse_fk_warehouse_rowid
        foreign key (fk_warehouse) references llx_entrepot (rowid)
)
    engine = InnoDB;

create index idx_categorie_warehouse_fk_categorie
    on llx_categorie_warehouse (fk_categorie);

create index idx_categorie_warehouse_fk_warehouse
    on llx_categorie_warehouse (fk_warehouse);

