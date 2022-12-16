create table dolibardev.llx_opensurvey_user_studs
(
    id_users      int auto_increment
        primary key,
    nom           varchar(64)                           not null,
    id_sondage    varchar(16)                           not null,
    reponses      varchar(200)                          not null,
    tms           timestamp default current_timestamp() not null on update current_timestamp(),
    ip            varchar(250)                          null,
    date_creation datetime                              null
)
    charset = latin1;

create index idx_opensurvey_user_studs_id_sondage
    on dolibardev.llx_opensurvey_user_studs (id_sondage);

create index idx_opensurvey_user_studs_id_users
    on dolibardev.llx_opensurvey_user_studs (id_users);

create index idx_opensurvey_user_studs_nom
    on dolibardev.llx_opensurvey_user_studs (nom);

