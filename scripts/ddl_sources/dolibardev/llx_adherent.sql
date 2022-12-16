create table dolibardev.llx_adherent
(
    rowid            int auto_increment
        primary key,
    ref              varchar(30)                           not null,
    entity           int       default 1                   not null,
    ref_ext          varchar(128)                          null,
    civility         varchar(6)                            null,
    lastname         varchar(50)                           null,
    firstname        varchar(50)                           null,
    login            varchar(50)                           null,
    pass             varchar(50)                           null,
    pass_crypted     varchar(128)                          null,
    fk_adherent_type int                                   not null,
    morphy           varchar(3)                            not null,
    societe          varchar(128)                          null,
    fk_soc           int                                   null,
    address          text                                  null,
    zip              varchar(30)                           null,
    town             varchar(50)                           null,
    state_id         int                                   null,
    country          int                                   null,
    email            varchar(255)                          null,
    url              varchar(255)                          null,
    socialnetworks   text                                  null,
    phone            varchar(30)                           null,
    phone_perso      varchar(30)                           null,
    phone_mobile     varchar(30)                           null,
    birth            date                                  null,
    photo            varchar(255)                          null,
    statut           smallint  default 0                   not null,
    public           smallint  default 0                   not null,
    datefin          datetime                              null,
    default_lang     varchar(6)                            null,
    note_private     text                                  null,
    note_public      text                                  null,
    datevalid        datetime                              null,
    datec            datetime                              null,
    tms              timestamp default current_timestamp() not null on update current_timestamp(),
    fk_user_author   int                                   null,
    fk_user_mod      int                                   null,
    fk_user_valid    int                                   null,
    canvas           varchar(32)                           null,
    import_key       varchar(14)                           null,
    model_pdf        varchar(255)                          null,
    gender           varchar(10)                           null,
    ip               varchar(250)                          null,
    constraint uk_adherent_fk_soc
        unique (fk_soc),
    constraint uk_adherent_login
        unique (login, entity),
    constraint uk_adherent_ref
        unique (ref, entity),
    constraint adherent_fk_soc
        foreign key (fk_soc) references dolibardev.llx_societe (rowid),
    constraint fk_adherent_adherent_type
        foreign key (fk_adherent_type) references dolibardev.llx_adherent_type (rowid)
)
    charset = latin1;

create index idx_adherent_fk_adherent_type
    on dolibardev.llx_adherent (fk_adherent_type);

