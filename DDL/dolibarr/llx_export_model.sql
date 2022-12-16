create table llx_export_model
(
    rowid   int auto_increment
        primary key,
    entity  int default 0 null,
    fk_user int default 0 not null,
    label   varchar(50)   not null,
    type    varchar(64)   not null,
    field   text          not null,
    filter  text          null,
    constraint uk_export_model
        unique (label, type)
)
    engine = InnoDB;

