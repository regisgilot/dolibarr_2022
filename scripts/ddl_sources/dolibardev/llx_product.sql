create table dolibardev.llx_product
(
    rowid                        int auto_increment
        primary key,
    ref                          varchar(128)                              not null,
    entity                       int           default 1                   not null,
    ref_ext                      varchar(128)                              null,
    datec                        datetime                                  null,
    tms                          timestamp     default current_timestamp() not null on update current_timestamp(),
    virtual                      tinyint       default 0                   not null,
    fk_parent                    int           default 0                   null,
    label                        varchar(255)                              not null,
    description                  text                                      null,
    note                         text                                      null,
    customcode                   varchar(32)                               null,
    fk_country                   int                                       null,
    fk_state                     int                                       null,
    price                        double(24, 8) default 0.00000000          null,
    price_ttc                    double(24, 8) default 0.00000000          null,
    price_min                    double(24, 8) default 0.00000000          null,
    price_min_ttc                double(24, 8) default 0.00000000          null,
    price_base_type              varchar(3)    default 'HT'                null,
    tva_tx                       double(6, 3)                              null,
    recuperableonly              int           default 0                   not null,
    localtax1_tx                 double(6, 3)  default 0.000               null,
    localtax1_type               varchar(10)   default '0'                 not null,
    localtax2_tx                 double(6, 3)  default 0.000               null,
    localtax2_type               varchar(10)   default '0'                 not null,
    fk_user_author               int                                       null,
    fk_user_modif                int                                       null,
    tosell                       tinyint       default 1                   null,
    tobuy                        tinyint       default 1                   null,
    onportal                     smallint      default 0                   null,
    tobatch                      tinyint       default 0                   not null,
    sell_or_eat_by_mandatory     tinyint       default 0                   not null,
    fk_product_type              int           default 0                   null,
    duration                     varchar(6)                                null,
    seuil_stock_alerte           float                                     null,
    url                          varchar(255)                              null,
    barcode                      varchar(255)                              null,
    fk_barcode_type              int                                       null,
    accountancy_code_sell        varchar(32) collate utf8mb3_unicode_ci    null,
    accountancy_code_sell_intra  varchar(32) collate utf8mb3_unicode_ci    null,
    accountancy_code_sell_export varchar(32) collate utf8mb3_unicode_ci    null,
    accountancy_code_buy         varchar(32) collate utf8mb3_unicode_ci    null,
    accountancy_code_buy_intra   varchar(32)                               null,
    accountancy_code_buy_export  varchar(32)                               null,
    partnumber                   varchar(32)                               null,
    weight                       float                                     null,
    weight_units                 tinyint                                   null,
    length                       float                                     null,
    length_units                 tinyint                                   null,
    surface                      float                                     null,
    surface_units                tinyint                                   null,
    volume                       float                                     null,
    volume_units                 tinyint                                   null,
    stock                        double                                    null,
    pmp                          double(24, 8) default 0.00000000          not null,
    fifo                         double(24, 8)                             null,
    lifo                         double(24, 8)                             null,
    canvas                       varchar(32)                               null,
    finished                     tinyint                                   null,
    hidden                       tinyint       default 0                   null,
    import_key                   varchar(14)                               null,
    fk_price_expression          int                                       null,
    desiredstock                 float                                     null,
    fk_unit                      int                                       null,
    cost_price                   double(24, 8)                             null,
    default_vat_code             varchar(10)                               null,
    price_autogen                smallint      default 0                   null,
    note_public                  text                                      null,
    model_pdf                    varchar(255)  default ''                  null,
    width                        float                                     null,
    width_units                  tinyint                                   null,
    height                       float                                     null,
    height_units                 tinyint                                   null,
    fk_default_warehouse         int                                       null,
    fk_project                   int                                       null,
    net_measure                  float                                     null,
    net_measure_units            tinyint                                   null,
    batch_mask                   varchar(32)                               null,
    lifetime                     int                                       null,
    qc_frequency                 int                                       null,
    mandatory_period             tinyint       default 0                   null,
    fk_default_bom               int                                       null,
    fk_default_workstation       int                                       null,
    constraint uk_product_barcode
        unique (barcode, fk_barcode_type, entity),
    constraint uk_product_ref
        unique (ref, entity),
    constraint fk_product_barcode_type
        foreign key (fk_barcode_type) references dolibardev.llx_c_barcode_type (rowid),
    constraint fk_product_default_warehouse
        foreign key (fk_default_warehouse) references dolibardev.llx_entrepot (rowid),
    constraint fk_product_finished
        foreign key (finished) references dolibardev.llx_c_product_nature (code),
    constraint fk_product_fk_country
        foreign key (fk_country) references dolibardev.llx_c_country (rowid),
    constraint fk_product_fk_unit
        foreign key (fk_unit) references dolibardev.llx_c_units (rowid)
)
    charset = latin1;

create index idx_product_barcode
    on dolibardev.llx_product (barcode);

create index idx_product_fk_barcode_type
    on dolibardev.llx_product (fk_barcode_type);

create index idx_product_fk_country
    on dolibardev.llx_product (fk_country);

create index idx_product_fk_project
    on dolibardev.llx_product (fk_project);

create index idx_product_fk_user_author
    on dolibardev.llx_product (fk_user_author);

create index idx_product_import_key
    on dolibardev.llx_product (import_key);

create index idx_product_label
    on dolibardev.llx_product (label);

create index idx_product_seuil_stock_alerte
    on dolibardev.llx_product (seuil_stock_alerte);

