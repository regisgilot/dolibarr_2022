create table llx_commande_fournisseurdet
(
    rowid                   int auto_increment
        primary key,
    fk_commande             int                              not null,
    fk_parent_line          int                              null,
    fk_product              int                              null,
    ref                     varchar(50)                      null,
    label                   varchar(255)                     null,
    description             text                             null,
    vat_src_code            varchar(10)   default ''         null,
    tva_tx                  double(7, 4)  default 0.0000     null,
    localtax1_tx            double(7, 4)  default 0.0000     null,
    localtax1_type          varchar(10)                      null,
    localtax2_tx            double(7, 4)  default 0.0000     null,
    localtax2_type          varchar(10)                      null,
    qty                     double                           null,
    remise_percent          double        default 0          null,
    remise                  double        default 0          null,
    subprice                double(24, 8) default 0.00000000 null,
    total_ht                double(24, 8) default 0.00000000 null,
    total_tva               double(24, 8) default 0.00000000 null,
    total_localtax1         double(24, 8) default 0.00000000 null,
    total_localtax2         double(24, 8) default 0.00000000 null,
    total_ttc               double(24, 8) default 0.00000000 null,
    product_type            int           default 0          null,
    date_start              datetime                         null,
    date_end                datetime                         null,
    info_bits               int           default 0          null,
    special_code            int           default 0          null,
    rang                    int           default 0          null,
    import_key              varchar(14)                      null,
    fk_unit                 int                              null,
    fk_multicurrency        int                              null,
    multicurrency_code      varchar(3)                       null,
    multicurrency_subprice  double(24, 8) default 0.00000000 null,
    multicurrency_total_ht  double(24, 8) default 0.00000000 null,
    multicurrency_total_tva double(24, 8) default 0.00000000 null,
    multicurrency_total_ttc double(24, 8) default 0.00000000 null,
    constraint fk_commande_fournisseurdet_fk_unit
        foreign key (fk_unit) references llx_c_units (rowid)
)
    engine = InnoDB;

create index idx_commande_fournisseurdet_fk_commande
    on llx_commande_fournisseurdet (fk_commande);

create index idx_commande_fournisseurdet_fk_product
    on llx_commande_fournisseurdet (fk_product);

