create table llx_socpeople
(
    rowid                   int auto_increment
        primary key,
    datec                   datetime                            null,
    tms                     timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_soc                  int                                 null,
    entity                  int       default 1                 not null,
    ref_ext                 varchar(255)                        null,
    civility                varchar(6)                          null,
    lastname                varchar(50)                         null,
    firstname               varchar(50)                         null,
    address                 varchar(255)                        null,
    zip                     varchar(25)                         null,
    town                    varchar(255)                        null,
    fk_departement          int                                 null,
    fk_pays                 int       default 0                 null,
    birthday                date                                null,
    poste                   varchar(255)                        null,
    phone                   varchar(30)                         null,
    phone_perso             varchar(30)                         null,
    phone_mobile            varchar(30)                         null,
    fax                     varchar(30)                         null,
    email                   varchar(255)                        null,
    socialnetworks          text                                null,
    photo                   varchar(255)                        null,
    no_email                smallint  default 0                 not null,
    priv                    smallint  default 0                 not null,
    fk_prospectcontactlevel varchar(12)                         null,
    fk_stcommcontact        int       default 0                 not null,
    fk_user_creat           int       default 0                 null,
    fk_user_modif           int                                 null,
    note_private            text                                null,
    note_public             text                                null,
    default_lang            varchar(6)                          null,
    canvas                  varchar(32)                         null,
    import_key              varchar(14)                         null,
    statut                  tinyint   default 1                 not null,
    constraint fk_socpeople_fk_soc
        foreign key (fk_soc) references llx_societe (rowid),
    constraint fk_socpeople_user_creat_user_rowid
        foreign key (fk_user_creat) references llx_user (rowid)
)
    engine = InnoDB;

create index idx_socpeople_fk_soc
    on llx_socpeople (fk_soc);

create index idx_socpeople_fk_user_creat
    on llx_socpeople (fk_user_creat);

