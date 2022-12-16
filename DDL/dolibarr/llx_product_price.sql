create table llx_product_price
(
    rowid                   int auto_increment
        primary key,
    entity                  int           default 1                 not null,
    tms                     timestamp     default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_product              int                                     not null,
    date_price              datetime                                not null,
    price_level             smallint      default 1                 null,
    price                   double(24, 8)                           null,
    price_ttc               double(24, 8)                           null,
    price_min               double(24, 8)                           null,
    price_min_ttc           double(24, 8)                           null,
    price_base_type         varchar(3)    default 'HT'              null,
    default_vat_code        varchar(10)                             null,
    tva_tx                  double(7, 4)  default 0.0000            not null,
    recuperableonly         int           default 0                 not null,
    localtax1_tx            double(7, 4)  default 0.0000            null,
    localtax1_type          varchar(10)   default '0'               not null,
    localtax2_tx            double(7, 4)  default 0.0000            null,
    localtax2_type          varchar(10)   default '0'               not null,
    fk_user_author          int                                     null,
    tosell                  tinyint       default 1                 null,
    price_by_qty            int           default 0                 not null,
    fk_price_expression     int                                     null,
    import_key              varchar(14)                             null,
    fk_multicurrency        int                                     null,
    multicurrency_code      varchar(3)                              null,
    multicurrency_tx        double(24, 8) default 1.00000000        null,
    multicurrency_price     double(24, 8)                           null,
    multicurrency_price_ttc double(24, 8)                           null,
    constraint fk_product_price_product
        foreign key (fk_user_author) references llx_user (rowid),
    constraint fk_product_price_user_author
        foreign key (fk_product) references llx_product (rowid)
)
    engine = InnoDB;

create index idx_product_price_fk_product
    on llx_product_price (fk_product);

create index idx_product_price_fk_user_author
    on llx_product_price (fk_user_author);

