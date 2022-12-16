create table dolibardev.llx_supplier_proposaldet
(
    rowid                        int auto_increment
        primary key,
    fk_supplier_proposal         int                              not null,
    fk_parent_line               int                              null,
    fk_product                   int                              null,
    label                        varchar(255)                     null,
    description                  text                             null,
    fk_remise_except             int                              null,
    tva_tx                       double(6, 3)  default 0.000      null,
    vat_src_code                 varchar(10)   default ''         null,
    localtax1_tx                 double(6, 3)  default 0.000      null,
    localtax1_type               varchar(10)                      null,
    localtax2_tx                 double(6, 3)  default 0.000      null,
    localtax2_type               varchar(10)                      null,
    qty                          double                           null,
    remise_percent               double        default 0          null,
    remise                       double        default 0          null,
    price                        double                           null,
    subprice                     double(24, 8) default 0.00000000 null,
    total_ht                     double(24, 8) default 0.00000000 null,
    total_tva                    double(24, 8) default 0.00000000 null,
    total_localtax1              double(24, 8) default 0.00000000 null,
    total_localtax2              double(24, 8) default 0.00000000 null,
    total_ttc                    double(24, 8) default 0.00000000 null,
    product_type                 int           default 0          null,
    info_bits                    int           default 0          null,
    buy_price_ht                 double(24, 8) default 0.00000000 null,
    fk_product_fournisseur_price int                              null,
    special_code                 int           default 0          null,
    rang                         int           default 0          null,
    ref_fourn                    varchar(30)                      null,
    fk_multicurrency             int                              null,
    multicurrency_code           varchar(3)                       null,
    multicurrency_subprice       double(24, 8) default 0.00000000 null,
    multicurrency_total_ht       double(24, 8) default 0.00000000 null,
    multicurrency_total_tva      double(24, 8) default 0.00000000 null,
    multicurrency_total_ttc      double(24, 8) default 0.00000000 null,
    fk_unit                      int                              null,
    date_start                   datetime                         null,
    date_end                     datetime                         null,
    constraint fk_supplier_proposaldet_fk_supplier_proposal
        foreign key (fk_supplier_proposal) references dolibardev.llx_supplier_proposal (rowid),
    constraint fk_supplier_proposaldet_fk_unit
        foreign key (fk_unit) references dolibardev.llx_c_units (rowid)
)
    charset = latin1;

create index idx_supplier_proposaldet_fk_product
    on dolibardev.llx_supplier_proposaldet (fk_product);

create index idx_supplier_proposaldet_fk_supplier_proposal
    on dolibardev.llx_supplier_proposaldet (fk_supplier_proposal);

