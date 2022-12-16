create table dolibardev.llx_societe_remise_except
(
    rowid                      int auto_increment
        primary key,
    entity                     int           default 1          not null,
    fk_soc                     int                              not null,
    discount_type              int           default 0          not null,
    datec                      datetime                         null,
    amount_ht                  double(24, 8)                    not null,
    amount_tva                 double(24, 8) default 0.00000000 not null,
    amount_ttc                 double(24, 8) default 0.00000000 not null,
    tva_tx                     double(6, 3)  default 0.000      not null,
    fk_user                    int                              not null,
    fk_facture_line            int                              null,
    fk_facture                 int                              null,
    fk_facture_source          int                              null,
    description                text                             not null,
    multicurrency_amount_ht    double(24, 8) default 0.00000000 not null,
    multicurrency_amount_tva   double(24, 8) default 0.00000000 not null,
    multicurrency_amount_ttc   double(24, 8) default 0.00000000 not null,
    fk_invoice_supplier_line   int                              null,
    fk_invoice_supplier        int                              null,
    fk_invoice_supplier_source int                              null,
    vat_src_code               varchar(10)   default ''         null,
    multicurrency_code         varchar(3)                       null,
    multicurrency_tx           double(24, 8)                    null,
    constraint fk_soc_remise_fk_facture_line
        foreign key (fk_facture_line) references dolibardev.llx_facturedet (rowid),
    constraint fk_soc_remise_fk_invoice_supplier_line
        foreign key (fk_invoice_supplier_line) references dolibardev.llx_facture_fourn_det (rowid),
    constraint fk_soc_remise_fk_soc
        foreign key (fk_soc) references dolibardev.llx_societe (rowid),
    constraint fk_societe_remise_fk_facture
        foreign key (fk_facture) references dolibardev.llx_facture (rowid),
    constraint fk_societe_remise_fk_facture_source
        foreign key (fk_facture_source) references dolibardev.llx_facture (rowid),
    constraint fk_societe_remise_fk_invoice_supplier
        foreign key (fk_invoice_supplier) references dolibardev.llx_facture_fourn (rowid),
    constraint fk_societe_remise_fk_invoice_supplier_source
        foreign key (fk_invoice_supplier) references dolibardev.llx_facture_fourn (rowid),
    constraint fk_societe_remise_fk_user
        foreign key (fk_user) references dolibardev.llx_user (rowid)
)
    charset = latin1;

create index idx_societe_remise_except_discount_type
    on dolibardev.llx_societe_remise_except (discount_type);

create index idx_societe_remise_except_fk_facture
    on dolibardev.llx_societe_remise_except (fk_facture);

create index idx_societe_remise_except_fk_facture_line
    on dolibardev.llx_societe_remise_except (fk_facture_line);

create index idx_societe_remise_except_fk_facture_source
    on dolibardev.llx_societe_remise_except (fk_facture_source);

create index idx_societe_remise_except_fk_soc
    on dolibardev.llx_societe_remise_except (fk_soc);

create index idx_societe_remise_except_fk_user
    on dolibardev.llx_societe_remise_except (fk_user);

