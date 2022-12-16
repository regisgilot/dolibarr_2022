create table dolibardev.llx_don_extrafields
(
    rowid      int auto_increment
        primary key,
    tms        timestamp default current_timestamp() not null on update current_timestamp(),
    fk_object  int                                   not null,
    import_key varchar(14)                           null
)
    charset = latin1;

create index idx_don_extrafields
    on dolibardev.llx_don_extrafields (fk_object);

