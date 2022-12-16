create table dolibardev.llx_overwrite_trans
(
    rowid      int auto_increment
        primary key,
    entity     int default 1 not null,
    lang       varchar(5)    null,
    transkey   varchar(128)  null,
    transvalue text          null,
    constraint uk_overwrite_trans
        unique (entity, lang, transkey)
);

