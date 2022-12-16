create table dolibardev.llx_propaldet_extrafields
(
    rowid      int auto_increment
        primary key,
    tms        timestamp default current_timestamp() not null on update current_timestamp(),
    fk_object  int                                   not null,
    import_key varchar(14)                           null,
    un         text                                  not null
)
    charset = latin1;

create index idx_propaldet_extrafields
    on dolibardev.llx_propaldet_extrafields (fk_object);

