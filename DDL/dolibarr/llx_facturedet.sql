create table llx_facturedet
(
    rowid                        int auto_increment
        primary key,
    fk_facture                   int                              not null,
    fk_parent_line               int                              null,
    fk_product                   int                              null,
    label                        varchar(255)                     null,
    description                  text                             null,
    vat_src_code                 varchar(10)   default ''         null,
    tva_tx                       double(7, 4)                     null,
    localtax1_tx                 double(7, 4)  default 0.0000     null,
    localtax1_type               varchar(10)                      null,
    localtax2_tx                 double(7, 4)  default 0.0000     null,
    localtax2_type               varchar(10)                      null,
    qty                          double                           null,
    remise_percent               double        default 0          null,
    remise                       double        default 0          null,
    fk_remise_except             int                              null,
    subprice                     double(24, 8)                    null,
    price                        double(24, 8)                    null,
    total_ht                     double(24, 8)                    null,
    total_tva                    double(24, 8)                    null,
    total_localtax1              double(24, 8) default 0.00000000 null,
    total_localtax2              double(24, 8) default 0.00000000 null,
    total_ttc                    double(24, 8)                    null,
    product_type                 int           default 0          null,
    date_start                   datetime                         null,
    date_end                     datetime                         null,
    info_bits                    int           default 0          null,
    buy_price_ht                 double(24, 8) default 0.00000000 null,
    fk_product_fournisseur_price int                              null,
    special_code                 int           default 0          null,
    rang                         int           default 0          null,
    fk_contract_line             int                              null,
    fk_unit                      int                              null,
    import_key                   varchar(14)                      null,
    fk_code_ventilation          int           default 0          not null,
    situation_percent            double        default 100        null,
    fk_prev_id                   int                              null,
    fk_user_author               int                              null,
    fk_user_modif                int                              null,
    fk_multicurrency             int                              null,
    multicurrency_code           varchar(3)                       null,
    multicurrency_subprice       double(24, 8) default 0.00000000 null,
    multicurrency_total_ht       double(24, 8) default 0.00000000 null,
    multicurrency_total_tva      double(24, 8) default 0.00000000 null,
    multicurrency_total_ttc      double(24, 8) default 0.00000000 null,
    ref_ext                      varchar(255)                     null,
    constraint uk_fk_remise_except
        unique (fk_remise_except, fk_facture),
    constraint fk_facturedet_fk_facture
        foreign key (fk_facture) references llx_facture (rowid),
    constraint fk_facturedet_fk_unit
        foreign key (fk_unit) references llx_c_units (rowid)
)
    engine = InnoDB;

create index idx_facturedet_fk_code_ventilation
    on llx_facturedet (fk_code_ventilation);

create index idx_facturedet_fk_facture
    on llx_facturedet (fk_facture);

create index idx_facturedet_fk_product
    on llx_facturedet (fk_product);

