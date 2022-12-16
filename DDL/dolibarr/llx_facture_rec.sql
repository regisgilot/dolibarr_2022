create table llx_facture_rec
(
    rowid                   int auto_increment
        primary key,
    titre                   varchar(200)                            not null,
    entity                  int           default 1                 not null,
    fk_soc                  int                                     not null,
    datec                   datetime                                null,
    tms                     timestamp     default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    suspended               int           default 0                 null,
    amount                  double(24, 8) default 0.00000000        not null,
    remise                  double        default 0                 null,
    remise_percent          double        default 0                 null,
    remise_absolue          double        default 0                 null,
    vat_src_code            varchar(10)   default ''                null,
    total_tva               double(24, 8) default 0.00000000        null,
    localtax1               double(24, 8) default 0.00000000        null,
    localtax2               double(24, 8) default 0.00000000        null,
    revenuestamp            double(24, 8) default 0.00000000        null,
    total_ht                double(24, 8) default 0.00000000        null,
    total_ttc               double(24, 8) default 0.00000000        null,
    fk_user_author          int                                     null,
    fk_user_modif           int                                     null,
    fk_projet               int                                     null,
    fk_cond_reglement       int           default 1                 not null,
    fk_mode_reglement       int           default 0                 null,
    date_lim_reglement      date                                    null,
    fk_account              int                                     null,
    note_private            text                                    null,
    note_public             text                                    null,
    modelpdf                varchar(255)                            null,
    fk_multicurrency        int                                     null,
    multicurrency_code      varchar(3)                              null,
    multicurrency_tx        double(24, 8) default 1.00000000        null,
    multicurrency_total_ht  double(24, 8) default 0.00000000        null,
    multicurrency_total_tva double(24, 8) default 0.00000000        null,
    multicurrency_total_ttc double(24, 8) default 0.00000000        null,
    usenewprice             int           default 0                 null,
    frequency               int                                     null,
    unit_frequency          varchar(2)    default 'm'               null,
    date_when               datetime                                null,
    date_last_gen           datetime                                null,
    nb_gen_done             int                                     null,
    nb_gen_max              int                                     null,
    auto_validate           int           default 0                 null,
    generate_pdf            int           default 1                 null,
    constraint idx_facture_rec_uk_titre
        unique (titre, entity),
    constraint fk_facture_rec_fk_projet
        foreign key (fk_projet) references llx_projet (rowid),
    constraint fk_facture_rec_fk_soc
        foreign key (fk_soc) references llx_societe (rowid),
    constraint fk_facture_rec_fk_user_author
        foreign key (fk_user_author) references llx_user (rowid)
)
    engine = InnoDB;

create index idx_facture_rec_fk_projet
    on llx_facture_rec (fk_projet);

create index idx_facture_rec_fk_soc
    on llx_facture_rec (fk_soc);

create index idx_facture_rec_fk_user_author
    on llx_facture_rec (fk_user_author);

