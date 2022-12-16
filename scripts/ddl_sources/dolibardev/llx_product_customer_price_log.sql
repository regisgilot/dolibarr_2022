create table dolibardev.llx_product_customer_price_log
(
    rowid            int auto_increment
        primary key,
    entity           int           default 1          not null,
    datec            datetime                         null,
    fk_product       int                              not null,
    fk_soc           int                              not null,
    price            double(24, 8) default 0.00000000 null,
    price_ttc        double(24, 8) default 0.00000000 null,
    price_min        double(24, 8) default 0.00000000 null,
    price_min_ttc    double(24, 8) default 0.00000000 null,
    price_base_type  varchar(3)    default 'HT'       null,
    tva_tx           double(6, 3)                     null,
    default_vat_code varchar(10)                      null,
    recuperableonly  int           default 0          not null,
    localtax1_tx     double(6, 3)  default 0.000      null,
    localtax1_type   varchar(10)   default '0'        not null,
    localtax2_tx     double(6, 3)  default 0.000      null,
    localtax2_type   varchar(10)   default '0'        not null,
    fk_user          int                              null,
    import_key       varchar(14)                      null,
    ref_customer     varchar(30)                      null
)
    charset = latin1;

