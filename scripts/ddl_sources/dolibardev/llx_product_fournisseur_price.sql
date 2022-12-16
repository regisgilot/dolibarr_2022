create table dolibardev.llx_product_fournisseur_price
(
    rowid                        int auto_increment
        primary key,
    entity                       int           default 1                   not null,
    datec                        datetime                                  null,
    tms                          timestamp     default current_timestamp() not null on update current_timestamp(),
    fk_product                   int                                       null,
    fk_soc                       int                                       null,
    ref_fourn                    varchar(128)                              null,
    desc_fourn                   text                                      null,
    fk_availability              int                                       null,
    price                        double(24, 8) default 0.00000000          null,
    quantity                     double                                    null,
    remise_percent               double        default 0                   not null,
    remise                       double        default 0                   not null,
    unitprice                    double(24, 8) default 0.00000000          null,
    charges                      double(24, 8) default 0.00000000          null,
    tva_tx                       double(6, 3)                              not null,
    default_vat_code             varchar(10)                               null,
    info_bits                    int           default 0                   not null,
    fk_user                      int                                       null,
    fk_supplier_price_expression int                                       null,
    import_key                   varchar(14)                               null,
    delivery_time_days           int                                       null,
    supplier_reputation          varchar(10)                               null,
    multicurrency_tx             double(24, 8) default 1.00000000          null,
    multicurrency_unitprice      double(24, 8)                             null,
    fk_multicurrency             int                                       null,
    multicurrency_code           varchar(3)                                null,
    multicurrency_price          double(24, 8)                             null,
    localtax1_tx                 double(6, 3)  default 0.000               null,
    localtax1_type               varchar(10)   default '0'                 not null,
    localtax2_tx                 double(6, 3)  default 0.000               null,
    localtax2_type               varchar(10)   default '0'                 not null,
    barcode                      varchar(180)                              null,
    fk_barcode_type              int                                       null,
    packaging                    double                                    null,
    constraint uk_product_barcode
        unique (barcode, fk_barcode_type, entity),
    constraint uk_product_fournisseur_price_ref
        unique (ref_fourn, fk_soc, quantity, entity),
    constraint fk_product_fournisseur_price_barcode_type
        foreign key (fk_barcode_type) references dolibardev.llx_c_barcode_type (rowid),
    constraint fk_product_fournisseur_price_fk_product
        foreign key (fk_product) references dolibardev.llx_product (rowid),
    constraint fk_product_fournisseur_price_fk_user
        foreign key (fk_user) references dolibardev.llx_user (rowid)
)
    charset = latin1;

create index idx_product_barcode
    on dolibardev.llx_product_fournisseur_price (barcode);

create index idx_product_fk_barcode_type
    on dolibardev.llx_product_fournisseur_price (fk_barcode_type);

create index idx_product_fourn_price_fk_product
    on dolibardev.llx_product_fournisseur_price (fk_product, entity);

create index idx_product_fourn_price_fk_soc
    on dolibardev.llx_product_fournisseur_price (fk_soc, entity);

create index idx_product_fournisseur_price_fk_user
    on dolibardev.llx_product_fournisseur_price (fk_user);

