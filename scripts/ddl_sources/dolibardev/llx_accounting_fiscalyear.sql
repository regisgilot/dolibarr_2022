create table dolibardev.llx_accounting_fiscalyear
(
    rowid          int auto_increment
        primary key,
    label          varchar(128)                          not null,
    date_start     date                                  null,
    date_end       date                                  null,
    statut         tinyint   default 0                   not null,
    entity         int       default 1                   not null,
    datec          datetime                              not null,
    tms            timestamp default current_timestamp() not null on update current_timestamp(),
    fk_user_author int                                   null,
    fk_user_modif  int                                   null
)
    charset = latin1;

