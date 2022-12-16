create table dolibardev.llx_accounting_system
(
    rowid       int auto_increment
        primary key,
    pcg_version varchar(32)        not null,
    label       varchar(128)       not null,
    active      smallint default 0 null,
    fk_country  int                null,
    constraint uk_accounting_system_pcg_version
        unique (pcg_version)
)
    charset = latin1;

