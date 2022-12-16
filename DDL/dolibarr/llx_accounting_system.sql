create table llx_accounting_system
(
    rowid       int auto_increment
        primary key,
    fk_country  int                null,
    pcg_version varchar(32)        not null,
    label       varchar(128)       not null,
    active      smallint default 0 null,
    constraint uk_accounting_system_pcg_version
        unique (pcg_version)
)
    engine = InnoDB;

