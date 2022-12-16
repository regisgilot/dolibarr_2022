create table llx_bom_bom_extrafields
(
    rowid      int auto_increment
        primary key,
    tms        timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_object  int                                 not null,
    import_key varchar(14)                         null
)
    engine = InnoDB;

create index idx_bom_bom_extrafields_fk_object
    on llx_bom_bom_extrafields (fk_object);

