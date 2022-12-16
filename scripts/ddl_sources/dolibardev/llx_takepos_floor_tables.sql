create table dolibardev.llx_takepos_floor_tables
(
    rowid   int auto_increment
        primary key,
    entity  int default 1 not null,
    label   varchar(255)  null,
    leftpos float         null,
    toppos  float         null,
    floor   smallint      null,
    constraint entity
        unique (entity, label)
);

