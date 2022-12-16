create table dolibardev.llx_import_model
(
    rowid   int auto_increment
        primary key,
    fk_user int default 0 not null,
    label   varchar(50)   not null,
    type    varchar(64)   null,
    field   text          not null,
    entity  int default 0 not null,
    constraint uk_import_model
        unique (label, type)
)
    charset = latin1;

