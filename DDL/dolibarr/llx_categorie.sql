create table llx_categorie
(
    rowid         int auto_increment
        primary key,
    entity        int       default 1                 not null,
    fk_parent     int       default 0                 not null,
    label         varchar(180)                        not null,
    ref_ext       varchar(255)                        null,
    type          int       default 1                 not null,
    description   text                                null,
    color         varchar(8)                          null,
    fk_soc        int                                 null,
    visible       tinyint   default 1                 not null,
    date_creation datetime                            null,
    tms           timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_user_creat int                                 null,
    fk_user_modif int                                 null,
    import_key    varchar(14)                         null
)
    engine = InnoDB;

