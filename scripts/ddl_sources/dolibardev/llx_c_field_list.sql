create table dolibardev.llx_c_field_list
(
    rowid   int auto_increment
        primary key,
    tms     timestamp    default current_timestamp() not null on update current_timestamp(),
    element varchar(64)                              not null,
    entity  int          default 1                   not null,
    name    varchar(32)                              not null,
    alias   varchar(32)                              not null,
    title   varchar(32)                              not null,
    align   varchar(6)   default 'left'              null,
    sort    tinyint      default 1                   not null,
    search  tinyint      default 0                   not null,
    visible tinyint      default 1                   not null,
    enabled varchar(255) default '1'                 null,
    rang    int          default 0                   null
)
    charset = latin1;

