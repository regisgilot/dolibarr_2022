create table dolibardev.llx_boxes_def
(
    rowid   int auto_increment
        primary key,
    file    varchar(200)                          not null,
    entity  int       default 1                   not null,
    tms     timestamp default current_timestamp() not null on update current_timestamp(),
    note    varchar(130)                          null,
    fk_user int       default 0                   not null,
    constraint uk_boxes_def
        unique (file, entity, note)
)
    charset = latin1;

