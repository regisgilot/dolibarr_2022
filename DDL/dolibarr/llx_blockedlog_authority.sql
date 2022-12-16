create table llx_blockedlog_authority
(
    rowid      int auto_increment
        primary key,
    blockchain longtext                            not null,
    signature  varchar(100)                        not null,
    tms        timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP
)
    engine = InnoDB;

create index signature
    on llx_blockedlog_authority (signature);

