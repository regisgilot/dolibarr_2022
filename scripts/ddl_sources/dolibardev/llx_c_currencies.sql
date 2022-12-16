create table dolibardev.llx_c_currencies
(
    code_iso varchar(3)        not null
        primary key,
    label    varchar(128)      null,
    unicode  varchar(32)       null,
    active   tinyint default 1 not null,
    constraint uk_c_currencies_code_iso
        unique (code_iso)
)
    charset = latin1;

