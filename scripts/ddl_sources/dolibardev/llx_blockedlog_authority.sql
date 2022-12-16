create table dolibardev.llx_blockedlog_authority
(
    rowid      int auto_increment
        primary key,
    blockchain longtext                              not null,
    signature  varchar(100)                          not null,
    tms        timestamp default current_timestamp() not null on update current_timestamp()
);

create index signature
    on dolibardev.llx_blockedlog_authority (signature);

