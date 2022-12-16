create table llx_c_propalst
(
    id     smallint          not null
        primary key,
    code   varchar(12)       not null,
    label  varchar(128)      null,
    active tinyint default 1 not null,
    constraint uk_c_propalst
        unique (code)
)
    engine = InnoDB;

