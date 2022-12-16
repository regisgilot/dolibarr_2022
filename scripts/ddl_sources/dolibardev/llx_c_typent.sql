create table dolibardev.llx_c_typent
(
    id         int               not null
        primary key,
    code       varchar(12)       not null,
    libelle    varchar(128)      null,
    fk_country int               null,
    active     tinyint default 1 not null,
    module     varchar(32)       null,
    position   int     default 0 not null,
    constraint uk_c_typent
        unique (code)
)
    charset = latin1;

