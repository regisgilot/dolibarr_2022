create table dolibardev.llx_c_availability
(
    rowid         int auto_increment
        primary key,
    code          varchar(30)       not null,
    label         varchar(128)      null,
    active        tinyint default 1 not null,
    position      int     default 0 not null,
    type_duration varchar(1)        null,
    qty           double  default 0 null,
    constraint uk_c_availability
        unique (code)
)
    charset = latin1;

