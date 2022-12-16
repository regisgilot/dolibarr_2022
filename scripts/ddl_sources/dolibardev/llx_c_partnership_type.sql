create table dolibardev.llx_c_partnership_type
(
    rowid   int auto_increment
        primary key,
    entity  int     default 1 not null,
    code    varchar(32)       not null,
    label   varchar(128)      null,
    active  tinyint default 1 not null,
    keyword varchar(128)      null,
    constraint uk_c_partnership_type
        unique (entity, code)
);

