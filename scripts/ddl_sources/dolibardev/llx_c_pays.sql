create table dolibardev.llx_c_pays
(
    rowid    int               not null
        primary key,
    code     varchar(2)        not null,
    code_iso varchar(3)        null,
    libelle  varchar(50)       not null,
    active   tinyint default 1 not null,
    constraint idx_c_country_code
        unique (code),
    constraint idx_c_country_code_iso
        unique (code_iso),
    constraint idx_c_pays_libelle
        unique (libelle)
)
    charset = latin1;

