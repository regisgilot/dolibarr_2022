create table dolibardev.llx_product_association
(
    rowid           int auto_increment
        primary key,
    fk_product_pere int default 0 not null,
    fk_product_fils int default 0 not null,
    qty             double        null,
    incdec          int default 1 null,
    rang            int default 0 null,
    constraint uk_product_association
        unique (fk_product_pere, fk_product_fils)
)
    charset = latin1;

create index idx_product_association_fils
    on dolibardev.llx_product_association (fk_product_fils);

