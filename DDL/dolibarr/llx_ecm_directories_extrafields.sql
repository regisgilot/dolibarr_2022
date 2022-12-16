create table llx_ecm_directories_extrafields
(
    rowid      int auto_increment
        primary key,
    tms        timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_object  int                                 not null,
    import_key varchar(14)                         null
)
    engine = InnoDB;

create index idx_ecm_directories_extrafields
    on llx_ecm_directories_extrafields (fk_object);

