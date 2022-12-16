create table dolibardev.llx_mailing
(
    rowid          int auto_increment
        primary key,
    statut         smallint  default 0                   null,
    titre          varchar(128)                          null,
    entity         int       default 1                   not null,
    sujet          varchar(128)                          null,
    body           mediumtext                            null,
    bgcolor        varchar(8)                            null,
    bgimage        varchar(255)                          null,
    cible          varchar(60)                           null,
    nbemail        int                                   null,
    email_from     varchar(160)                          null,
    email_replyto  varchar(160)                          null,
    email_errorsto varchar(160)                          null,
    tag            varchar(128)                          null,
    date_creat     datetime                              null,
    date_valid     datetime                              null,
    date_appro     datetime                              null,
    date_envoi     datetime                              null,
    fk_user_creat  int                                   null,
    fk_user_valid  int                                   null,
    fk_user_appro  int                                   null,
    extraparams    varchar(255)                          null,
    joined_file1   varchar(255)                          null,
    joined_file2   varchar(255)                          null,
    joined_file3   varchar(255)                          null,
    joined_file4   varchar(255)                          null,
    tms            timestamp default current_timestamp() not null on update current_timestamp(),
    constraint uk_mailing
        unique (titre, entity)
)
    charset = latin1;

