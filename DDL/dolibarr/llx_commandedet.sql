create table llx_commandedet
(
    rowid                        int auto_increment
        primary key,
    fk_commande                  int                              not null,
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
    price                        double                           null,
    subprice                     double(24, 8) default 0.00000000 null,
    total_ht                     double(24, 8) default 0.00000000 null,
    total_tva                    double(24, 8) default 0.00000000 null,
    total_localtax1              double(24, 8) default 0.00000000 null,
    total_localtax2              double(24, 8) default 0.00000000 null,
    total_ttc                    double(24, 8) default 0.00000000 null,
    product_type                 int           default 0          null,
    date_start                   datetime                         null,
    date_end                     datetime                         null,
    info_bits                    int           default 0          null,
    buy_price_ht                 double(24, 8) default 0.00000000 null,
    fk_product_fournisseur_price int                              null,
    special_code                 int           default 0          null,
    rang                         int           default 0          null,
    fk_unit                      int                              null,
    import_key                   varchar(14)                      null,
    ref_ext                      varchar(255)                     null,
    fk_commandefourndet          int                              null,
    fk_multicurrency             int                              null,
    multicurrency_code           varchar(3)                       null,
    multicurrency_subprice       double(24, 8) default 0.00000000 null,
    multicurrency_total_ht       double(24, 8) default 0.00000000 null,
    multicurrency_total_tva      double(24, 8) default 0.00000000 null,
    multicurrency_total_ttc      double(24, 8) default 0.00000000 null,
    constraint fk_commandedet_fk_commande
        foreign key (fk_commande) references llx_commande (rowid),
    constraint fk_commandedet_fk_commandefourndet
        foreign key (fk_commandefourndet) references llx_commande_fournisseurdet (rowid),
    constraint fk_commandedet_fk_unit
        foreign key (fk_unit) references llx_c_units (rowid)
)
    engine = InnoDB;

create index idx_commandedet_fk_commande
    on llx_commandedet (fk_commande);

create index idx_commandedet_fk_product
    on llx_commandedet (fk_product);

