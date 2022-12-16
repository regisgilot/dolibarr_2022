create table dolibardev.llx_product_fournisseur_price_extrafields
(
    rowid      int auto_increment
        primary key,
    tms        timestamp default current_timestamp() not null on update current_timestamp(),
    fk_object  int                                   not null,
    import_key varchar(14)                           null
);

create index idx_product_fournisseur_price_extrafields
    on dolibardev.llx_product_fournisseur_price_extrafields (fk_object);

