create table llx_oauth_token
(
    rowid          int auto_increment
        primary key,
    service        varchar(36)                         null,
    token          text                                null,
    tokenstring    text                                null,
    fk_soc         int                                 null,
    fk_user        int                                 null,
    fk_adherent    int                                 null,
    restricted_ips varchar(200)                        null,
    datec          datetime                            null,
    tms            timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    entity         int       default 1                 null
)
    engine = InnoDB;

