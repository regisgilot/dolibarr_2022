create table llx_facture
(
    rowid                               int auto_increment
        primary key,
    ref                                 varchar(30)                             not null,
    entity                              int           default 1                 not null,
    ref_ext                             varchar(255)                            null,
    ref_int                             varchar(255)                            null,
    ref_client                          varchar(255)                            null,
    type                                smallint      default 0                 not null,
    fk_soc                              int                                     not null,
    datec                               datetime                                null,
    datef                               date                                    null,
    date_pointoftax                     date                                    null,
    date_valid                          date                                    null,
    tms                                 timestamp     default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    date_closing                        datetime                                null,
    paye                                smallint      default 0                 not null,
    remise_percent                      double        default 0                 null,
    remise_absolue                      double        default 0                 null,
    remise                              double        default 0                 null,
    close_code                          varchar(16)                             null,
    close_missing_amount                double(24, 8)                           null,
    close_note                          varchar(128)                            null,
    total_tva                           double(24, 8) default 0.00000000        null,
    localtax1                           double(24, 8) default 0.00000000        null,
    localtax2                           double(24, 8) default 0.00000000        null,
    revenuestamp                        double(24, 8) default 0.00000000        null,
    total_ht                            double(24, 8) default 0.00000000        null,
    total_ttc                           double(24, 8) default 0.00000000        null,
    fk_statut                           smallint      default 0                 not null,
    fk_user_author                      int                                     null,
    fk_user_modif                       int                                     null,
    fk_user_valid                       int                                     null,
    fk_user_closing                     int                                     null,
    module_source                       varchar(32)                             null,
    pos_source                          varchar(32)                             null,
    fk_fac_rec_source                   int                                     null,
    fk_facture_source                   int                                     null,
    fk_projet                           int                                     null,
    increment                           varchar(10)                             null,
    fk_account                          int                                     null,
    fk_currency                         varchar(3)                              null,
    fk_cond_reglement                   int           default 1                 not null,
    fk_mode_reglement                   int                                     null,
    date_lim_reglement                  date                                    null,
    note_private                        text                                    null,
    note_public                         text                                    null,
    model_pdf                           varchar(255)                            null,
    last_main_doc                       varchar(255)                            null,
    fk_incoterms                        int                                     null,
    location_incoterms                  varchar(255)                            null,
    fk_transport_mode                   int                                     null,
    situation_cycle_ref                 smallint                                null,
    situation_counter                   smallint                                null,
    situation_final                     smallint                                null,
    retained_warranty                   double                                  null,
    retained_warranty_date_limit        date                                    null,
    retained_warranty_fk_cond_reglement int                                     null,
    import_key                          varchar(14)                             null,
    extraparams                         varchar(255)                            null,
    fk_multicurrency                    int                                     null,
    multicurrency_code                  varchar(3)                              null,
    multicurrency_tx                    double(24, 8) default 1.00000000        null,
    multicurrency_total_ht              double(24, 8) default 0.00000000        null,
    multicurrency_total_tva             double(24, 8) default 0.00000000        null,
    multicurrency_total_ttc             double(24, 8) default 0.00000000        null,
    constraint uk_facture_ref
        unique (ref, entity),
    constraint fk_facture_fk_facture_source
        foreign key (fk_facture_source) references llx_facture (rowid),
    constraint fk_facture_fk_projet
        foreign key (fk_projet) references llx_projet (rowid),
    constraint fk_facture_fk_soc
        foreign key (fk_soc) references llx_societe (rowid),
    constraint fk_facture_fk_user_author
        foreign key (fk_user_author) references llx_user (rowid),
    constraint fk_facture_fk_user_valid
        foreign key (fk_user_valid) references llx_user (rowid)
)
    engine = InnoDB;

create index idx_facture_datef
    on llx_facture (datef);

create index idx_facture_fk_account
    on llx_facture (fk_account);

create index idx_facture_fk_currency
    on llx_facture (fk_currency);

create index idx_facture_fk_facture_source
    on llx_facture (fk_facture_source);

create index idx_facture_fk_projet
    on llx_facture (fk_projet);

create index idx_facture_fk_soc
    on llx_facture (fk_soc);

create index idx_facture_fk_statut
    on llx_facture (fk_statut);

create index idx_facture_fk_user_author
    on llx_facture (fk_user_author);

create index idx_facture_fk_user_valid
    on llx_facture (fk_user_valid);

