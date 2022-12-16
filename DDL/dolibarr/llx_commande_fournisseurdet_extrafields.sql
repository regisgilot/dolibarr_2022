create table llx_commande_fournisseurdet_extrafields
(
    rowid      int auto_increment
        primary key,
    tms        timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_object  int                                 not null,
    import_key varchar(14)                         null
)
    engine = InnoDB;

create index idx_commande_fournisseurdet_extrafields
    on llx_commande_fournisseurdet_extrafields (fk_object);

