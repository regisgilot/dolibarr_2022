create table dolibardev.llx_product_attribute_combination
(
    rowid                      int auto_increment
        primary key,
    fk_product_parent          int           not null,
    fk_product_child           int           not null,
    variation_price            float         not null,
    variation_price_percentage int           null,
    variation_weight           float         not null,
    variation_ref_ext          varchar(255)  null,
    entity                     int default 1 not null
);

create index idx_product_att_com_product_child
    on dolibardev.llx_product_attribute_combination (fk_product_child);

create index idx_product_att_com_product_parent
    on dolibardev.llx_product_attribute_combination (fk_product_parent);

