create table llx_product_fournisseur_price_log
(
    rowid                   int auto_increment
        primary key,
    datec                   datetime                         null,
    fk_product_fournisseur  int                              not null,
    price                   double(24, 8) default 0.00000000 null,
    quantity                double                           null,
    fk_user                 int                              null,
    fk_multicurrency        int                              null,
    multicurrency_code      varchar(3)                       null,
    multicurrency_tx        double(24, 8) default 1.00000000 null,
    multicurrency_unitprice double(24, 8)                    null,
    multicurrency_price     double(24, 8)                    null
)
    engine = InnoDB;

