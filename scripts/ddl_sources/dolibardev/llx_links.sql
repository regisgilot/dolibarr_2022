create table dolibardev.llx_links
(
    rowid      int auto_increment
        primary key,
    entity     int default 1 not null,
    datea      datetime      not null,
    url        varchar(255)  not null,
    label      varchar(255)  not null,
    objecttype varchar(255)  not null,
    objectid   int           not null,
    constraint uk_links
        unique (objectid, label)
)
    charset = latin1;

