create table dolibardev.llx_stock_mouvement_extrafields
(
    rowid      int auto_increment
        primary key,
    tms        timestamp default current_timestamp() not null on update current_timestamp(),
    fk_object  int                                   not null,
    import_key varchar(14)                           null
);

create index idx_stock_mouvement_extrafields
    on dolibardev.llx_stock_mouvement_extrafields (fk_object);

