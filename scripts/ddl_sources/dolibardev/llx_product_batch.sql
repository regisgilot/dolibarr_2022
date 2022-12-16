create table dolibardev.llx_product_batch
(
    rowid            int auto_increment
        primary key,
    tms              timestamp default current_timestamp() not null on update current_timestamp(),
    fk_product_stock int                                   not null,
    eatby            datetime                              null,
    sellby           datetime                              null,
    batch            varchar(128)                          null,
    qty              double    default 0                   not null,
    import_key       varchar(14)                           null,
    constraint uk_product_batch
        unique (fk_product_stock, batch),
    constraint fk_product_batch_fk_product_stock
        foreign key (fk_product_stock) references dolibardev.llx_product_stock (rowid)
)
    charset = latin1;

create index idx_batch
    on dolibardev.llx_product_batch (batch);

create index idx_fk_product_stock
    on dolibardev.llx_product_batch (fk_product_stock);

