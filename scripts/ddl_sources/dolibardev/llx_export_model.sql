create table dolibardev.llx_export_model
(
    rowid   int auto_increment
        primary key,
    fk_user int default 0 not null,
    label   varchar(50)   not null,
    type    varchar(64)   null,
    field   text          not null,
    filter  text          null,
    entity  int default 0 not null,
    constraint uk_export_model
        unique (label, type)
)
    charset = latin1;

