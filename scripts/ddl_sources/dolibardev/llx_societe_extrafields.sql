create table dolibardev.llx_societe_extrafields
(
    rowid      int auto_increment
        primary key,
    tms        timestamp default current_timestamp() not null on update current_timestamp(),
    fk_object  int                                   not null,
    import_key varchar(14)                           null,
    constraint uk_societe_extrafields
        unique (fk_object)
)
    charset = latin1;

