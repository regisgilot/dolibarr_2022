create table dolibardev.llx_fichinter
(
    rowid          int auto_increment
        primary key,
    fk_soc         int                                   not null,
    fk_projet      int       default 0                   null,
    fk_contrat     int       default 0                   null,
    ref            varchar(30)                           not null,
    ref_ext        varchar(255)                          null,
    ref_client     varchar(255)                          null,
    entity         int       default 1                   not null,
    tms            timestamp default current_timestamp() not null on update current_timestamp(),
    datec          datetime                              null,
    date_valid     datetime                              null,
    datei          date                                  null,
    fk_user_author int                                   null,
    fk_user_modif  int                                   null,
    fk_user_valid  int                                   null,
    fk_statut      smallint  default 0                   null,
    duree          double                                null,
    dateo          date                                  null,
    datee          date                                  null,
    datet          date                                  null,
    description    text                                  null,
    note_private   text                                  null,
    note_public    text                                  null,
    model_pdf      varchar(255)                          null,
    extraparams    varchar(255)                          null,
    last_main_doc  varchar(255)                          null,
    import_key     varchar(14)                           null,
    constraint uk_fichinter_ref
        unique (ref, entity),
    constraint fk_fichinter_fk_soc
        foreign key (fk_soc) references dolibardev.llx_societe (rowid)
)
    charset = latin1;

create index idx_fichinter_fk_soc
    on dolibardev.llx_fichinter (fk_soc);

