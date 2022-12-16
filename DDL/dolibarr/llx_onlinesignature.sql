create table llx_onlinesignature
(
    rowid       int auto_increment
        primary key,
    entity      int       default 1                 not null,
    object_type varchar(32)                         not null,
    object_id   int                                 not null,
    datec       datetime                            not null,
    tms         timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    name        varchar(255)                        not null,
    ip          varchar(128)                        null,
    pathoffile  varchar(255)                        null
)
    engine = InnoDB;

