create table dolibardev.llx_c_civilite
(
    rowid    int               not null
        primary key,
    code     varchar(6)        not null,
    civilite varchar(50)       null,
    active   tinyint default 1 not null,
    module   varchar(32)       null,
    constraint uk_c_civilite
        unique (code)
)
    charset = latin1;

