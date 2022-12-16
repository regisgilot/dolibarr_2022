create table llx_boxes_def
(
    rowid   int auto_increment
        primary key,
    file    varchar(200)                        not null,
    entity  int       default 1                 not null,
    fk_user int       default 0                 not null,
    tms     timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    note    varchar(130)                        null,
    constraint uk_boxes_def
        unique (file, entity, note)
)
    engine = InnoDB;

