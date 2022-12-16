create table dolibardev.llx_stock_lotserial
(
    rowid         int auto_increment
        primary key,
    entity        int                                   null,
    fk_product    int                                   not null,
    batch         varchar(30)                           null,
    eatby         date                                  null,
    sellby        date                                  null,
    datec         datetime                              null,
    tms           timestamp default current_timestamp() not null on update current_timestamp(),
    fk_user_creat int                                   null,
    fk_user_modif int                                   null,
    import_key    int                                   null
);

