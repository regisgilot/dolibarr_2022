create table llx_comment
(
    rowid          int auto_increment
        primary key,
    datec          datetime                            null,
    tms            timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    description    text                                not null,
    fk_user_author int                                 null,
    fk_user_modif  int                                 null,
    fk_element     int                                 null,
    element_type   varchar(50)                         null,
    entity         int       default 1                 null,
    import_key     varchar(125)                        null
)
    engine = InnoDB;

