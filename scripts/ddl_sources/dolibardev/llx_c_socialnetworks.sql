create table dolibardev.llx_c_socialnetworks
(
    rowid  int auto_increment
        primary key,
    entity int     default 1 not null,
    code   varchar(100)      null,
    label  varchar(150)      null,
    url    text              null,
    icon   varchar(20)       null,
    active tinyint default 1 not null,
    constraint idx_c_socialnetworks_code_entity
        unique (code, entity)
);

