create table llx_commande
(
    rowid                   int auto_increment
        primary key,
    ref                     varchar(30)                             not null,
    entity                  int           default 1                 not null,
    ref_ext                 varchar(255)                            null,
    ref_int                 varchar(255)                            null,
    ref_client              varchar(255)                            null,
    fk_soc                  int                                     not null,
    fk_projet               int                                     null,
    tms                     timestamp     default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    date_creation           datetime                                null,
    date_valid              datetime                                null,
    date_cloture            datetime                                null,
    date_commande           date                                    null,
    fk_user_author          int                                     null,
    fk_user_modif           int                                     null,
    fk_user_valid           int                                     null,
    fk_user_cloture         int                                     null,
    source                  smallint                                null,
    fk_statut               smallint      default 0                 null,
    amount_ht               double(24, 8) default 0.00000000        null,
    remise_percent          double        default 0                 null,
    remise_absolue          double        default 0                 null,
    remise                  double        default 0                 null,
    total_tva               double(24, 8) default 0.00000000        null,
    localtax1               double(24, 8) default 0.00000000        null,
    localtax2               double(24, 8) default 0.00000000        null,
    total_ht                double(24, 8) default 0.00000000        null,
    total_ttc               double(24, 8) default 0.00000000        null,
    note_private            text                                    null,
    note_public             text                                    null,
    model_pdf               varchar(255)                            null,
    last_main_doc           varchar(255)                            null,
    module_source           varchar(32)                             null,
    pos_source              varchar(32)                             null,
    facture                 tinyint       default 0                 null,
    fk_account              int                                     null,
    fk_currency             varchar(3)                              null,
    fk_cond_reglement       int                                     null,
    deposit_percent         varchar(63)                             null,
    fk_mode_reglement       int                                     null,
    date_livraison          datetime                                null,
    fk_shipping_method      int                                     null,
    fk_warehouse            int                                     null,
    fk_availability         int                                     null,
    fk_input_reason         int                                     null,
    fk_delivery_address     int                                     null,
    fk_incoterms            int                                     null,
    location_incoterms      varchar(255)                            null,
    import_key              varchar(14)                             null,
    extraparams             varchar(255)                            null,
    fk_multicurrency        int                                     null,
    multicurrency_code      varchar(3)                              null,
    multicurrency_tx        double(24, 8) default 1.00000000        null,
    multicurrency_total_ht  double(24, 8) default 0.00000000        null,
    multicurrency_total_tva double(24, 8) default 0.00000000        null,
    multicurrency_total_ttc double(24, 8) default 0.00000000        null,
    constraint uk_commande_ref
        unique (ref, entity),
    constraint fk_commande_fk_projet
        foreign key (fk_projet) references llx_projet (rowid),
    constraint fk_commande_fk_soc
        foreign key (fk_soc) references llx_societe (rowid),
    constraint fk_commande_fk_user_author
        foreign key (fk_user_author) references llx_user (rowid),
    constraint fk_commande_fk_user_cloture
        foreign key (fk_user_cloture) references llx_user (rowid),
    constraint fk_commande_fk_user_valid
        foreign key (fk_user_valid) references llx_user (rowid)
)
    engine = InnoDB;

create index idx_commande_fk_account
    on llx_commande (fk_account);

create index idx_commande_fk_currency
    on llx_commande (fk_currency);

create index idx_commande_fk_projet
    on llx_commande (fk_projet);

create index idx_commande_fk_soc
    on llx_commande (fk_soc);

create index idx_commande_fk_user_author
    on llx_commande (fk_user_author);

create index idx_commande_fk_user_cloture
    on llx_commande (fk_user_cloture);

create index idx_commande_fk_user_valid
    on llx_commande (fk_user_valid);

