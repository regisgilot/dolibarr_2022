create table dolibardev.llx_c_type_container
(
    rowid  int auto_increment
        primary key,
    code   varchar(32)       not null,
    entity int     default 1 not null,
    label  varchar(128)      null,
    module varchar(32)       null,
    active tinyint default 1 not null,
    constraint uk_c_type_container_id
        unique (code, entity)
);

