create table llx_const
(
    rowid   int auto_increment
        primary key,
    name    varchar(180)                          not null,
    entity  int         default 1                 not null,
    value   text                                  not null,
    type    varchar(64) default 'string'          null,
    visible tinyint     default 1                 not null,
    note    text                                  null,
    tms     timestamp   default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    constraint uk_const
        unique (name, entity)
)
    engine = InnoDB;

