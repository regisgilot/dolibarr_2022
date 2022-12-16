create table llx_supplier_proposaldet_extrafields
(
    rowid      int auto_increment
        primary key,
    tms        timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_object  int                                 not null,
    import_key varchar(14)                         null
)
    engine = InnoDB;

create index idx_supplier_proposaldet_extrafields
    on llx_supplier_proposaldet_extrafields (fk_object);

