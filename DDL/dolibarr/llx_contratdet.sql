create table llx_contratdet
(
    rowid                        int auto_increment
        primary key,
    tms                          timestamp     default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_contrat                   int                                     not null,
    fk_product                   int                                     null,
    statut                       smallint      default 0                 null,
    label                        text                                    null,
    description                  text                                    null,
    fk_remise_except             int                                     null,
    date_commande                datetime                                null,
    date_ouverture_prevue        datetime                                null,
    date_ouverture               datetime                                null,
    date_fin_validite            datetime                                null,
    date_cloture                 datetime                                null,
    vat_src_code                 varchar(10)   default ''                null,
    tva_tx                       double(7, 4)  default 0.0000            null,
    localtax1_tx                 double(7, 4)  default 0.0000            null,
    localtax1_type               varchar(10)                             null,
    localtax2_tx                 double(7, 4)  default 0.0000            null,
    localtax2_type               varchar(10)                             null,
    qty                          double                                  not null,
    remise_percent               double        default 0                 null,
    subprice                     double(24, 8) default 0.00000000        null,
    price_ht                     double                                  null,
    remise                       double        default 0                 null,
    total_ht                     double(24, 8) default 0.00000000        null,
    total_tva                    double(24, 8) default 0.00000000        null,
    total_localtax1              double(24, 8) default 0.00000000        null,
    total_localtax2              double(24, 8) default 0.00000000        null,
    total_ttc                    double(24, 8) default 0.00000000        null,
    product_type                 int           default 1                 null,
    info_bits                    int           default 0                 null,
    rang                         int           default 0                 null,
    buy_price_ht                 double(24, 8)                           null,
    fk_product_fournisseur_price int                                     null,
    fk_user_author               int           default 0                 not null,
    fk_user_ouverture            int                                     null,
    fk_user_cloture              int                                     null,
    commentaire                  text                                    null,
    fk_unit                      int                                     null,
    fk_multicurrency             int                                     null,
    multicurrency_code           varchar(3)                              null,
    multicurrency_subprice       double(24, 8) default 0.00000000        null,
    multicurrency_total_ht       double(24, 8) default 0.00000000        null,
    multicurrency_total_tva      double(24, 8) default 0.00000000        null,
    multicurrency_total_ttc      double(24, 8) default 0.00000000        null,
    constraint fk_contratdet_fk_contrat
        foreign key (fk_contrat) references llx_contrat (rowid),
    constraint fk_contratdet_fk_product
        foreign key (fk_product) references llx_product (rowid),
    constraint fk_contratdet_fk_unit
        foreign key (fk_unit) references llx_c_units (rowid)
)
    engine = InnoDB;

create index idx_contratdet_date_fin_validite
    on llx_contratdet (date_fin_validite);

create index idx_contratdet_date_ouverture
    on llx_contratdet (date_ouverture);

create index idx_contratdet_date_ouverture_prevue
    on llx_contratdet (date_ouverture_prevue);

create index idx_contratdet_fk_contrat
    on llx_contratdet (fk_contrat);

create index idx_contratdet_fk_product
    on llx_contratdet (fk_product);

