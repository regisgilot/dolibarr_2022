create table llx_contrat
(
    rowid                   int auto_increment
        primary key,
    ref                     varchar(255)                        null,
    ref_customer            varchar(255)                        null,
    ref_supplier            varchar(255)                        null,
    ref_ext                 varchar(255)                        null,
    entity                  int       default 1                 not null,
    tms                     timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    datec                   datetime                            null,
    date_contrat            datetime                            null,
    statut                  smallint  default 0                 null,
    fin_validite            datetime                            null,
    date_cloture            datetime                            null,
    fk_soc                  int                                 not null,
    fk_projet               int                                 null,
    fk_commercial_signature int                                 null,
    fk_commercial_suivi     int                                 null,
    fk_user_author          int       default 0                 not null,
    fk_user_modif           int                                 null,
    fk_user_cloture         int                                 null,
    note_private            text                                null,
    note_public             text                                null,
    model_pdf               varchar(255)                        null,
    last_main_doc           varchar(255)                        null,
    import_key              varchar(14)                         null,
    extraparams             varchar(255)                        null,
    constraint uk_contrat_ref
        unique (ref, entity),
    constraint fk_contrat_fk_soc
        foreign key (fk_soc) references llx_societe (rowid),
    constraint fk_contrat_user_author
        foreign key (fk_user_author) references llx_user (rowid)
)
    engine = InnoDB;

create index idx_contrat_fk_soc
    on llx_contrat (fk_soc);

create index idx_contrat_fk_user_author
    on llx_contrat (fk_user_author);

