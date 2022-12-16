create table llx_c_units
(
    rowid       int auto_increment
        primary key,
    code        varchar(3)        null,
    sortorder   smallint          null,
    scale       int               null,
    label       varchar(128)      null,
    short_label varchar(5)        null,
    unit_type   varchar(10)       null,
    active      tinyint default 1 not null,
    constraint uk_c_units_code
        unique (code)
)
    engine = InnoDB;

