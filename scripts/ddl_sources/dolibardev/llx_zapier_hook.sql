create table dolibardev.llx_zapier_hook
(
    rowid         int auto_increment
        primary key,
    entity        int       default 1                   not null,
    url           varchar(255)                          null,
    event         varchar(255)                          null,
    module        varchar(128)                          null,
    action        varchar(128)                          null,
    status        int                                   null,
    date_creation datetime                              not null,
    fk_user       int                                   not null,
    tms           timestamp default current_timestamp() not null on update current_timestamp(),
    import_key    varchar(14)                           null
);

