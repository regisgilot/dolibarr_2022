create table dolibardev.llx_societe_remise
(
    rowid          int auto_increment
        primary key,
    entity         int          default 1                   not null,
    fk_soc         int                                      not null,
    tms            timestamp    default current_timestamp() not null on update current_timestamp(),
    datec          datetime                                 null,
    fk_user_author int                                      null,
    remise_client  double(6, 3) default 0.000               not null,
    note           text                                     null
)
    charset = latin1;

