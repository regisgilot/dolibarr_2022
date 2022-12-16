create table dolibardev.llx_facture_fourn
(
    rowid                   int auto_increment
        primary key,
    ref                     varchar(255)                              not null,
    ref_supplier            varchar(255)                              not null,
    entity                  int           default 1                   not null,
    ref_ext                 varchar(255)                              null,
    type                    smallint      default 0                   not null,
    fk_soc                  int                                       not null,
    datec                   datetime                                  null,
    datef                   date                                      null,
    tms                     timestamp     default current_timestamp() not null on update current_timestamp(),
    libelle                 varchar(255)                              null,
    paye                    smallint      default 0                   not null,
    amount                  double(24, 8) default 0.00000000          not null,
    remise                  double(24, 8) default 0.00000000          null,
    close_code              varchar(16)                               null,
    close_missing_amount    double(24, 8)                             null,
    close_note              varchar(128)                              null,
    tva                     double(24, 8) default 0.00000000          null,
    localtax1               double(24, 8) default 0.00000000          null,
    localtax2               double(24, 8) default 0.00000000          null,
    total_ht                double(24, 8) default 0.00000000          null,
    total_tva               double(24, 8) default 0.00000000          null,
    total_ttc               double(24, 8) default 0.00000000          null,
    fk_statut               smallint      default 0                   not null,
    fk_user_author          int                                       null,
    fk_user_modif           int                                       null,
    fk_user_valid           int                                       null,
    fk_user_closing         int                                       null,
    fk_facture_source       int                                       null,
    fk_projet               int                                       null,
    fk_account              int                                       null,
    fk_cond_reglement       int                                       null,
    fk_mode_reglement       int                                       null,
    date_lim_reglement      date                                      null,
    note_private            text                                      null,
    note_public             text                                      null,
    fk_incoterms            int                                       null,
    location_incoterms      varchar(255)                              null,
    fk_transport_mode       int                                       null,
    model_pdf               varchar(255)                              null,
    import_key              varchar(14)                               null,
    extraparams             varchar(255)                              null,
    fk_multicurrency        int                                       null,
    multicurrency_code      varchar(3)                                null,
    multicurrency_tx        double(24, 8) default 1.00000000          null,
    multicurrency_total_ht  double(24, 8) default 0.00000000          null,
    multicurrency_total_tva double(24, 8) default 0.00000000          null,
    multicurrency_total_ttc double(24, 8) default 0.00000000          null,
    last_main_doc           varchar(255)                              null,
    date_pointoftax         date                                      null,
    date_valid              date                                      null,
    date_closing            datetime                                  null,
    fk_fac_rec_source       int                                       null,
    constraint uk_facture_fourn_ref
        unique (ref, entity),
    constraint uk_facture_fourn_ref_supplier
        unique (ref_supplier, fk_soc, entity),
    constraint fk_facture_fourn_fk_projet
        foreign key (fk_projet) references dolibardev.llx_projet (rowid),
    constraint fk_facture_fourn_fk_soc
        foreign key (fk_soc) references dolibardev.llx_societe (rowid),
    constraint fk_facture_fourn_fk_user_author
        foreign key (fk_user_author) references dolibardev.llx_user (rowid),
    constraint fk_facture_fourn_fk_user_valid
        foreign key (fk_user_valid) references dolibardev.llx_user (rowid)
)
    charset = latin1;

create index idx_facture_fourn_date_lim_reglement
    on dolibardev.llx_facture_fourn (date_lim_reglement);

create index idx_facture_fourn_fk_projet
    on dolibardev.llx_facture_fourn (fk_projet);

create index idx_facture_fourn_fk_soc
    on dolibardev.llx_facture_fourn (fk_soc);

create index idx_facture_fourn_fk_user_author
    on dolibardev.llx_facture_fourn (fk_user_author);

create index idx_facture_fourn_fk_user_valid
    on dolibardev.llx_facture_fourn (fk_user_valid);

