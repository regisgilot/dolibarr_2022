create table dolibardev.llx_c_effectif
(
    id      int               not null
        primary key,
    code    varchar(12)       not null,
    libelle varchar(128)      null,
    active  tinyint default 1 not null,
    module  varchar(32)       null,
    constraint uk_c_effectif
        unique (code)
)
    charset = latin1;

