create table dolibardev.llx_const
(
    rowid   int auto_increment
        primary key,
    name    varchar(255)                            not null,
    entity  int         default 1                   not null,
    value   text                                    not null,
    type    varchar(64) default 'string'            null,
    visible tinyint     default 1                   not null,
    note    text                                    null,
    tms     timestamp   default current_timestamp() not null on update current_timestamp(),
    constraint uk_const
        unique (name, entity)
)
    charset = latin1;

