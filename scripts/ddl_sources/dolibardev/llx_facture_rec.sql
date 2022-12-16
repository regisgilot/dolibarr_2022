create table dolibardev.llx_facture_rec
(
    rowid                   int auto_increment
        primary key,
    titre                   varchar(200)                              not null,
    entity                  int           default 1                   not null,
    fk_soc                  int                                       not null,
    datec                   datetime                                  null,
    amount                  double(24, 8) default 0.00000000          not null,
    remise                  double        default 0                   null,
    remise_percent          double        default 0                   null,
    remise_absolue          double        default 0                   null,
    total_tva               double(24, 8) default 0.00000000          null,
    localtax1               double(24, 8) default 0.00000000          null,
    localtax2               double(24, 8) default 0.00000000          null,
    revenuestamp            double(24, 8) default 0.00000000          null,
    total_ht                double(24, 8) default 0.00000000          null,
    total_ttc               double(24, 8) default 0.00000000          null,
    fk_user_author          int                                       null,
    fk_projet               int                                       null,
    fk_cond_reglement       int           default 1                   not null,
    fk_mode_reglement       int           default 0                   null,
    date_lim_reglement      date                                      null,
    note_private            text                                      null,
    note_public             text                                      null,
    modelpdf                varchar(255)                              null,
    usenewprice             int           default 0                   null,
    frequency               int                                       null,
    unit_frequency          varchar(2)    default 'm'                 null,
    date_when               datetime                                  null,
    date_last_gen           datetime                                  null,
    nb_gen_done             int                                       null,
    nb_gen_max              int                                       null,
    auto_validate           int           default 0                   null,
    generate_pdf            int           default 1                   null,
    fk_account              int           default 0                   null,
    fk_multicurrency        int                                       null,
    multicurrency_code      varchar(3)                                null,
    multicurrency_tx        double(24, 8) default 1.00000000          null,
    multicurrency_total_ht  double(24, 8) default 0.00000000          null,
    multicurrency_total_tva double(24, 8) default 0.00000000          null,
    multicurrency_total_ttc double(24, 8) default 0.00000000          null,
    fk_user_modif           int                                       null,
    tms                     timestamp     default current_timestamp() not null on update current_timestamp(),
    vat_src_code            varchar(10)   default ''                  null,
    suspended               int           default 0                   null,
    constraint idx_facture_rec_uk_titre
        unique (titre, entity),
    constraint fk_facture_rec_fk_projet
        foreign key (fk_projet) references dolibardev.llx_projet (rowid),
    constraint fk_facture_rec_fk_soc
        foreign key (fk_soc) references dolibardev.llx_societe (rowid),
    constraint fk_facture_rec_fk_user_author
        foreign key (fk_user_author) references dolibardev.llx_user (rowid)
)
    charset = latin1;

create index idx_facture_rec_fk_projet
    on dolibardev.llx_facture_rec (fk_projet);

create index idx_facture_rec_fk_soc
    on dolibardev.llx_facture_rec (fk_soc);

create index idx_facture_rec_fk_user_author
    on dolibardev.llx_facture_rec (fk_user_author);

