create table llx_product_batch
(
    rowid            int auto_increment
        primary key,
    tms              timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_product_stock int                                 not null,
    eatby            datetime                            null,
    sellby           datetime                            null,
    batch            varchar(128)                        not null,
    qty              double    default 0                 not null,
    import_key       varchar(14)                         null,
    constraint uk_product_batch
        unique (fk_product_stock, batch),
    constraint fk_product_batch_fk_product_stock
        foreign key (fk_product_stock) references llx_product_stock (rowid)
)
    engine = InnoDB;

create index idx_batch
    on llx_product_batch (batch);

create index idx_fk_product_stock
    on llx_product_batch (fk_product_stock);

