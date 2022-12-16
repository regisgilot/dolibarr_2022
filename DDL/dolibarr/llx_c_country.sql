create table llx_c_country
(
    rowid    int               not null
        primary key,
    code     varchar(2)        not null,
    code_iso varchar(3)        null,
    label    varchar(128)      not null,
    eec      tinyint default 0 not null,
    active   tinyint default 1 not null,
    favorite tinyint default 0 not null,
    constraint idx_c_country_code
        unique (code),
    constraint idx_c_country_code_iso
        unique (code_iso),
    constraint idx_c_country_label
        unique (label)
)
    engine = InnoDB;

