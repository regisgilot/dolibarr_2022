create table dolibardev.llx_c_stcomm
(
    id      int               not null
        primary key,
    code    varchar(24)       not null,
    libelle varchar(128)      null,
    picto   varchar(128)      null,
    active  tinyint default 1 not null,
    constraint uk_c_stcomm
        unique (code)
)
    charset = latin1;

