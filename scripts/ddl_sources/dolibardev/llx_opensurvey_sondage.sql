create table dolibardev.llx_opensurvey_sondage
(
    id_sondage     varchar(16)                           not null
        primary key,
    entity         int       default 1                   not null,
    commentaires   text                                  null,
    mail_admin     varchar(128)                          null,
    nom_admin      varchar(64)                           null,
    fk_user_creat  int                                   not null,
    titre          text                                  not null,
    date_fin       datetime                              null,
    status         int       default 1                   null,
    format         varchar(2)                            not null,
    mailsonde      tinyint   default 0                   not null,
    allow_comments tinyint   default 1                   not null,
    allow_spy      tinyint   default 1                   not null,
    tms            timestamp default current_timestamp() not null on update current_timestamp(),
    sujet          text                                  null
)
    charset = latin1;

create index idx_date_fin
    on dolibardev.llx_opensurvey_sondage (date_fin);

