create table dolibardev.llx_object_lang
(
    rowid       int auto_increment
        primary key,
    fk_object   int        default 0   not null,
    type_object varchar(32)            not null,
    property    varchar(32)            not null,
    lang        varchar(5) default '0' not null,
    value       text                   null,
    import_key  varchar(14)            null,
    constraint uk_object_lang
        unique (fk_object, type_object, property, lang)
);

