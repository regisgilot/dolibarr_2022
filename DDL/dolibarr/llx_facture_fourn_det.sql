create table llx_facture_fourn_det
(
    rowid                   int auto_increment
        primary key,
    fk_facture_fourn        int                              not null,
    fk_parent_line          int                              null,
    fk_product              int                              null,
    ref                     varchar(50)                      null,
    label                   varchar(255)                     null,
    description             text                             null,
    pu_ht                   double(24, 8)                    null,
    pu_ttc                  double(24, 8)                    null,
    qty                     double                           null,
    remise_percent          double        default 0          null,
    fk_remise_except        int                              null,
    vat_src_code            varchar(10)   default ''         null,
    tva_tx                  double(7, 4)                     null,
    localtax1_tx            double(7, 4)  default 0.0000     null,
    localtax1_type          varchar(10)                      null,
    localtax2_tx            double(7, 4)  default 0.0000     null,
    localtax2_type          varchar(10)                      null,
    total_ht                double(24, 8)                    null,
    tva                     double(24, 8)                    null,
    total_localtax1         double(24, 8) default 0.00000000 null,
    total_localtax2         double(24, 8) default 0.00000000 null,
    total_ttc               double(24, 8)                    null,
    product_type            int           default 0          null,
    date_start              datetime                         null,
    date_end                datetime                         null,
    info_bits               int           default 0          null,
    fk_code_ventilation     int           default 0          not null,
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
    constraint uk_fk_remise_except
        unique (fk_remise_except, fk_facture_fourn),
    constraint fk_facture_fourn_det_fk_facture
        foreign key (fk_facture_fourn) references llx_facture_fourn (rowid),
    constraint fk_facture_fourn_det_fk_unit
        foreign key (fk_unit) references llx_c_units (rowid)
)
    engine = InnoDB;

create index idx_facture_fourn_det_fk_code_ventilation
    on llx_facture_fourn_det (fk_code_ventilation);

create index idx_facture_fourn_det_fk_facture
    on llx_facture_fourn_det (fk_facture_fourn);

create index idx_facture_fourn_det_fk_product
    on llx_facture_fourn_det (fk_product);

