create table dolibardev.llx_onlinesignature
(
    rowid       int auto_increment
        primary key,
    entity      int       default 1                   not null,
    object_type varchar(32)                           not null,
    object_id   int                                   not null,
    datec       datetime                              not null,
    tms         timestamp default current_timestamp() not null on update current_timestamp(),
    name        varchar(255)                          not null,
    ip          varchar(128)                          null,
    pathoffile  varchar(255)                          null
);

