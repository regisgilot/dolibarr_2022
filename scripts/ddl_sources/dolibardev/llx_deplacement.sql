create table dolibardev.llx_deplacement
(
    rowid          int auto_increment
        primary key,
    ref            varchar(30)                           null,
    entity         int       default 1                   not null,
    datec          datetime                              not null,
    tms            timestamp default current_timestamp() not null on update current_timestamp(),
    dated          datetime                              null,
    fk_user        int                                   not null,
    fk_user_author int                                   null,
    fk_user_modif  int                                   null,
    type           varchar(12)                           not null,
    fk_statut      int       default 1                   not null,
    km             double                                null,
    fk_soc         int                                   null,
    fk_projet      int       default 0                   null,
    note_private   text                                  null,
    note_public    text                                  null,
    extraparams    varchar(255)                          null
)
    charset = latin1;

