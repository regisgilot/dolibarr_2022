create table llx_c_type_resource
(
    rowid  int auto_increment
        primary key,
    code   varchar(32)       not null,
    label  varchar(128)      not null,
    active tinyint default 1 not null,
    constraint uk_c_type_resource_id
        unique (label, code)
)
    engine = InnoDB;

