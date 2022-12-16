create table dolibardev.llx_default_values
(
    rowid   int auto_increment
        primary key,
    entity  int default 1 not null,
    type    varchar(10)   null,
    user_id int default 0 not null,
    page    varchar(255)  null,
    param   varchar(255)  null,
    value   varchar(128)  null,
    constraint uk_default_values
        unique (type, entity, user_id, page, param)
);

