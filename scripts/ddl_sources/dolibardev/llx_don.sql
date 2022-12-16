create table dolibardev.llx_don
(
    rowid          int auto_increment
        primary key,
    ref            varchar(30)                           null,
    entity         int       default 1                   not null,
    tms            timestamp default current_timestamp() not null on update current_timestamp(),
    fk_statut      smallint  default 0                   not null,
    datec          datetime                              null,
    datedon        datetime                              null,
    amount         double(24, 8)                         null,
    fk_payment     int                                   null,
    paid           smallint  default 0                   not null,
    firstname      varchar(50)                           null,
    lastname       varchar(50)                           null,
    societe        varchar(50)                           null,
    address        text                                  null,
    zip            varchar(30)                           null,
    town           varchar(50)                           null,
    country        varchar(50)                           null,
    fk_country     int                                   not null,
    email          varchar(255)                          null,
    phone          varchar(24)                           null,
    phone_mobile   varchar(24)                           null,
    public         smallint  default 1                   not null,
    fk_projet      int                                   null,
    fk_user_author int                                   not null,
    fk_user_valid  int                                   null,
    note_private   text                                  null,
    note_public    text                                  null,
    model_pdf      varchar(255)                          null,
    import_key     varchar(14)                           null,
    date_valid     datetime                              null,
    extraparams    varchar(255)                          null,
    fk_soc         int                                   null,
    fk_user_modif  int                                   null,
    constraint idx_don_uk_ref
        unique (ref, entity)
)
    charset = latin1;

create index idx_don_fk_project
    on dolibardev.llx_don (fk_projet);

create index idx_don_fk_soc
    on dolibardev.llx_don (fk_soc);

create index idx_don_fk_user_author
    on dolibardev.llx_don (fk_user_author);

create index idx_don_fk_user_valid
    on dolibardev.llx_don (fk_user_valid);

