create table llx_c_stcommcontact
(
    id      int               not null
        primary key,
    code    varchar(12)       not null,
    libelle varchar(128)      null,
    picto   varchar(128)      null,
    active  tinyint default 1 not null,
    constraint uk_c_stcommcontact
        unique (code)
)
    engine = InnoDB;

