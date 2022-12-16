create table dolibardev.llx_contrat
(
    rowid                   int auto_increment
        primary key,
    ref                     varchar(50)                           null,
    ref_supplier            varchar(50)                           null,
    ref_ext                 varchar(255)                          null,
    entity                  int       default 1                   not null,
    tms                     timestamp default current_timestamp() not null on update current_timestamp(),
    datec                   datetime                              null,
    date_contrat            datetime                              null,
    statut                  smallint  default 0                   null,
    mise_en_service         datetime                              null,
    fin_validite            datetime                              null,
    date_cloture            datetime                              null,
    fk_soc                  int                                   not null,
    fk_projet               int                                   null,
    fk_commercial_signature int                                   null,
    fk_commercial_suivi     int                                   null,
    fk_user_author          int       default 0                   not null,
    fk_user_mise_en_service int                                   null,
    fk_user_cloture         int                                   null,
    note_private            text                                  null,
    note_public             text                                  null,
    model_pdf               varchar(255)                          null,
    import_key              varchar(14)                           null,
    extraparams             varchar(255)                          null,
    ref_customer            varchar(50)                           null,
    fk_user_modif           int                                   null,
    last_main_doc           varchar(255)                          null,
    constraint uk_contrat_ref
        unique (ref, entity),
    constraint fk_contrat_fk_soc
        foreign key (fk_soc) references dolibardev.llx_societe (rowid),
    constraint fk_contrat_user_author
        foreign key (fk_user_author) references dolibardev.llx_user (rowid)
)
    charset = latin1;

create index idx_contrat_fk_soc
    on dolibardev.llx_contrat (fk_soc);

create index idx_contrat_fk_user_author
    on dolibardev.llx_contrat (fk_user_author);

