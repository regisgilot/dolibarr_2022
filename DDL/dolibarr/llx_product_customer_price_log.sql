create table llx_product_customer_price_log
(
    rowid            int auto_increment
        primary key,
    entity           int           default 1          not null,
    datec            datetime                         null,
    fk_product       int                              not null,
    fk_soc           int           default 0          not null,
    ref_customer     varchar(30)                      null,
    price            double(24, 8) default 0.00000000 null,
    price_ttc        double(24, 8) default 0.00000000 null,
    price_min        double(24, 8) default 0.00000000 null,
    price_min_ttc    double(24, 8) default 0.00000000 null,
    price_base_type  varchar(3)    default 'HT'       null,
    default_vat_code varchar(10)                      null,
    tva_tx           double(7, 4)                     null,
    recuperableonly  int           default 0          not null,
    localtax1_tx     double(7, 4)  default 0.0000     null,
    localtax1_type   varchar(10)   default '0'        not null,
    localtax2_tx     double(7, 4)  default 0.0000     null,
    localtax2_type   varchar(10)   default '0'        not null,
    fk_user          int                              null,
    import_key       varchar(14)                      null
)
    engine = InnoDB;

