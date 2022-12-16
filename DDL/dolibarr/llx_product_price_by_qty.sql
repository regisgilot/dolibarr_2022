create table llx_product_price_by_qty
(
    rowid                   int auto_increment
        primary key,
    fk_product_price        int                                     not null,
    price                   double(24, 8) default 0.00000000        null,
    price_base_type         varchar(3)    default 'HT'              null,
    quantity                double                                  null,
    remise_percent          double        default 0                 not null,
    remise                  double        default 0                 not null,
    unitprice               double(24, 8) default 0.00000000        null,
    fk_user_creat           int                                     null,
    fk_user_modif           int                                     null,
    fk_multicurrency        int                                     null,
    multicurrency_code      varchar(3)                              null,
    multicurrency_tx        double(24, 8) default 1.00000000        null,
    multicurrency_price     double(24, 8)                           null,
    multicurrency_price_ttc double(24, 8)                           null,
    tms                     timestamp     default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    import_key              varchar(14)                             null,
    constraint uk_product_price_by_qty_level
        unique (fk_product_price, quantity),
    constraint fk_product_price_by_qty_fk_product_price
        foreign key (fk_product_price) references llx_product_price (rowid)
)
    engine = InnoDB;

create index idx_product_price_by_qty_fk_product_price
    on llx_product_price_by_qty (fk_product_price);

