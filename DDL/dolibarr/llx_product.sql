create table llx_product
(
    rowid                        int auto_increment
        primary key,
    ref                          varchar(128)                            not null,
    entity                       int           default 1                 not null,
    ref_ext                      varchar(128)                            null,
    datec                        datetime                                null,
    tms                          timestamp     default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_parent                    int           default 0                 null,
    label                        varchar(255)                            not null,
    description                  text                                    null,
    note_public                  text                                    null,
    note                         text                                    null,
    customcode                   varchar(32)                             null,
    fk_country                   int                                     null,
    fk_state                     int                                     null,
    price                        double(24, 8) default 0.00000000        null,
    price_ttc                    double(24, 8) default 0.00000000        null,
    price_min                    double(24, 8) default 0.00000000        null,
    price_min_ttc                double(24, 8) default 0.00000000        null,
    price_base_type              varchar(3)    default 'HT'              null,
    cost_price                   double(24, 8)                           null,
    default_vat_code             varchar(10)                             null,
    tva_tx                       double(7, 4)                            null,
    recuperableonly              int           default 0                 not null,
    localtax1_tx                 double(7, 4)  default 0.0000            null,
    localtax1_type               varchar(10)   default '0'               not null,
    localtax2_tx                 double(7, 4)  default 0.0000            null,
    localtax2_type               varchar(10)   default '0'               not null,
    fk_user_author               int                                     null,
    fk_user_modif                int                                     null,
    tosell                       tinyint       default 1                 null,
    tobuy                        tinyint       default 1                 null,
    onportal                     tinyint       default 0                 null,
    tobatch                      tinyint       default 0                 not null,
    batch_mask                   varchar(32)                             null,
    fk_product_type              int           default 0                 null,
    duration                     varchar(6)                              null,
    seuil_stock_alerte           float                                   null,
    url                          varchar(255)                            null,
    barcode                      varchar(180)                            null,
    fk_barcode_type              int                                     null,
    accountancy_code_sell        varchar(32)                             null,
    accountancy_code_sell_intra  varchar(32)                             null,
    accountancy_code_sell_export varchar(32)                             null,
    accountancy_code_buy         varchar(32)                             null,
    accountancy_code_buy_intra   varchar(32)                             null,
    accountancy_code_buy_export  varchar(32)                             null,
    partnumber                   varchar(32)                             null,
    net_measure                  float                                   null,
    net_measure_units            tinyint                                 null,
    weight                       float                                   null,
    weight_units                 tinyint                                 null,
    length                       float                                   null,
    length_units                 tinyint                                 null,
    width                        float                                   null,
    width_units                  tinyint                                 null,
    height                       float                                   null,
    height_units                 tinyint                                 null,
    surface                      float                                   null,
    surface_units                tinyint                                 null,
    volume                       float                                   null,
    volume_units                 tinyint                                 null,
    stock                        double                                  null,
    pmp                          double(24, 8) default 0.00000000        not null,
    fifo                         double(24, 8)                           null,
    lifo                         double(24, 8)                           null,
    fk_default_warehouse         int                                     null,
    canvas                       varchar(32)                             null,
    finished                     tinyint                                 null,
    lifetime                     int                                     null,
    qc_frequency                 int                                     null,
    hidden                       tinyint       default 0                 null,
    import_key                   varchar(14)                             null,
    model_pdf                    varchar(255)                            null,
    fk_price_expression          int                                     null,
    desiredstock                 float         default 0                 null,
    fk_unit                      int                                     null,
    price_autogen                tinyint       default 0                 null,
    fk_project                   int                                     null,
    mandatory_period             tinyint       default 0                 null,
    fk_default_bom               int                                     null,
    constraint uk_product_barcode
        unique (barcode, fk_barcode_type, entity),
    constraint uk_product_ref
        unique (ref, entity),
    constraint fk_product_barcode_type
        foreign key (fk_barcode_type) references llx_c_barcode_type (rowid),
    constraint fk_product_default_warehouse
        foreign key (fk_default_warehouse) references llx_entrepot (rowid),
    constraint fk_product_finished
        foreign key (finished) references llx_c_product_nature (code),
    constraint fk_product_fk_country
        foreign key (fk_country) references llx_c_country (rowid),
    constraint fk_product_fk_unit
        foreign key (fk_unit) references llx_c_units (rowid)
)
    engine = InnoDB;

create index idx_product_barcode
    on llx_product (barcode);

create index idx_product_fk_barcode_type
    on llx_product (fk_barcode_type);

create index idx_product_fk_country
    on llx_product (fk_country);

create index idx_product_fk_project
    on llx_product (fk_project);

create index idx_product_fk_user_author
    on llx_product (fk_user_author);

create index idx_product_import_key
    on llx_product (import_key);

create index idx_product_label
    on llx_product (label);

create index idx_product_seuil_stock_alerte
    on llx_product (seuil_stock_alerte);

