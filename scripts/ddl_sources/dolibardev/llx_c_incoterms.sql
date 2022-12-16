create table dolibardev.llx_c_incoterms
(
    rowid   int auto_increment
        primary key,
    code    varchar(3)        not null,
    libelle varchar(255)      not null,
    active  tinyint default 1 not null,
    label   varchar(100)      null,
    constraint uk_c_incoterms
        unique (code)
)
    charset = latin1;

