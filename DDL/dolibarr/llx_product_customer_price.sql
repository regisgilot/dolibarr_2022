create table llx_product_customer_price
(
    rowid            int auto_increment
        primary key,
    entity           int           default 1                 not null,
    datec            datetime                                null,
    tms              timestamp     default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_product       int                                     not null,
    fk_soc           int                                     not null,
    ref_customer     varchar(128)                            null,
    price            double(24, 8) default 0.00000000        null,
    price_ttc        double(24, 8) default 0.00000000        null,
    price_min        double(24, 8) default 0.00000000        null,
    price_min_ttc    double(24, 8) default 0.00000000        null,
    price_base_type  varchar(3)    default 'HT'              null,
    default_vat_code varchar(10)                             null,
    tva_tx           double(7, 4)                            null,
    recuperableonly  int           default 0                 not null,
    localtax1_tx     double(7, 4)  default 0.0000            null,
    localtax1_type   varchar(10)   default '0'               not null,
    localtax2_tx     double(7, 4)  default 0.0000            null,
    localtax2_type   varchar(10)   default '0'               not null,
    fk_user          int                                     null,
    import_key       varchar(14)                             null,
    constraint uk_customer_price_fk_product_fk_soc
        unique (fk_product, fk_soc),
    constraint fk_product_customer_price_fk_product
        foreign key (fk_product) references llx_product (rowid),
    constraint fk_product_customer_price_fk_soc
        foreign key (fk_soc) references llx_societe (rowid),
    constraint fk_product_customer_price_fk_user
        foreign key (fk_user) references llx_user (rowid)
)
    engine = InnoDB;

create index idx_product_customer_price_fk_soc
    on llx_product_customer_price (fk_soc);

create index idx_product_customer_price_fk_user
    on llx_product_customer_price (fk_user);

