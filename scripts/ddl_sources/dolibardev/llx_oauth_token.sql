create table dolibardev.llx_oauth_token
(
    rowid          int auto_increment
        primary key,
    service        varchar(36)                           null,
    token          text                                  null,
    fk_soc         int                                   null,
    fk_user        int                                   null,
    fk_adherent    int                                   null,
    entity         int       default 1                   null,
    tokenstring    text                                  null,
    state          text                                  null,
    restricted_ips varchar(200)                          null,
    datec          datetime                              null,
    tms            timestamp default current_timestamp() not null on update current_timestamp()
);

