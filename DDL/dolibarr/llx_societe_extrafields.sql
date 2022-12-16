create table llx_societe_extrafields
(
    rowid      int auto_increment
        primary key,
    tms        timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_object  int                                 not null,
    import_key varchar(14)                         null,
    constraint uk_societe_extrafields
        unique (fk_object)
)
    engine = InnoDB;

