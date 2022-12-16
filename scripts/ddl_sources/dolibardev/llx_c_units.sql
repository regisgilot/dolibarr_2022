create table dolibardev.llx_c_units
(
    rowid       int auto_increment
        primary key,
    code        varchar(3)        null,
    sortorder   smallint          null,
    label       varchar(128)      null,
    short_label varchar(5)        null,
    active      tinyint default 1 not null,
    scale       int               null,
    unit_type   varchar(10)       null,
    constraint uk_c_units_code
        unique (code)
)
    charset = latin1;

