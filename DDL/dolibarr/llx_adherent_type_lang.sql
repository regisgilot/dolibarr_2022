create table llx_adherent_type_lang
(
    rowid       int auto_increment
        primary key,
    fk_type     int        default 0   not null,
    lang        varchar(5) default '0' not null,
    label       varchar(255)           not null,
    description text                   null,
    email       text                   null,
    import_key  varchar(14)            null
)
    engine = InnoDB;

