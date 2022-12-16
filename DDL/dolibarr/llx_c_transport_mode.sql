create table llx_c_transport_mode
(
    rowid  int auto_increment
        primary key,
    entity int     default 1 not null,
    code   varchar(3)        not null,
    label  varchar(255)      not null,
    active tinyint default 1 not null,
    constraint uk_c_transport_mode
        unique (code, entity)
)
    engine = InnoDB;

