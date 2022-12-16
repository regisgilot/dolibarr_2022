create table dolibardev.llx_product_perentity
(
    rowid                        int auto_increment
        primary key,
    fk_product                   int           null,
    entity                       int default 1 not null,
    accountancy_code_sell        varchar(32)   null,
    accountancy_code_sell_intra  varchar(32)   null,
    accountancy_code_sell_export varchar(32)   null,
    accountancy_code_buy         varchar(32)   null,
    accountancy_code_buy_intra   varchar(32)   null,
    accountancy_code_buy_export  varchar(32)   null,
    pmp                          double(24, 8) null,
    constraint uk_product_perentity
        unique (fk_product, entity)
);

create index idx_product_perentity_fk_product
    on dolibardev.llx_product_perentity (fk_product);

