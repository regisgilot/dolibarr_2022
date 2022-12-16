create table dolibardev.llx_c_civility
(
    rowid  int auto_increment
        primary key,
    code   varchar(6)        not null,
    label  varchar(128)      null,
    active tinyint default 1 not null,
    module varchar(32)       null,
    constraint uk_c_civility
        unique (code)
)
    charset = latin1;

