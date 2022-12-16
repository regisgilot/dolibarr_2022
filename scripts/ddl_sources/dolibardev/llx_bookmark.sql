create table dolibardev.llx_bookmark
(
    rowid    int auto_increment
        primary key,
    fk_user  int           not null,
    dateb    datetime      null,
    url      text          null,
    target   varchar(16)   null,
    title    varchar(64)   null,
    favicon  varchar(24)   null,
    position int default 0 null,
    entity   int default 1 not null,
    constraint uk_bookmark_title
        unique (fk_user, entity, title)
)
    charset = latin1;

