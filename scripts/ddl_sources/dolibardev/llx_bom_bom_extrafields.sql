create table dolibardev.llx_bom_bom_extrafields
(
    rowid      int auto_increment
        primary key,
    tms        timestamp default current_timestamp() not null on update current_timestamp(),
    fk_object  int                                   not null,
    import_key varchar(14)                           null
);

create index idx_bom_bom_extrafields_fk_object
    on dolibardev.llx_bom_bom_extrafields (fk_object);

