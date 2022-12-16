create table llx_product_fournisseur_price_extrafields
(
    rowid      int auto_increment
        primary key,
    tms        timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_object  int                                 not null,
    import_key varchar(14)                         null
)
    engine = InnoDB;

create index idx_product_fournisseur_price_extrafields
    on llx_product_fournisseur_price_extrafields (fk_object);

