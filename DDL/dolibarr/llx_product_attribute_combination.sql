create table llx_product_attribute_combination
(
    rowid                      int auto_increment
        primary key,
    fk_product_parent          int           not null,
    fk_product_child           int           not null,
    variation_price            double(24, 8) not null,
    variation_price_percentage int           null,
    variation_weight           double        not null,
    variation_ref_ext          varchar(255)  null,
    entity                     int default 1 not null
)
    engine = InnoDB;

create index idx_product_att_com_product_child
    on llx_product_attribute_combination (fk_product_child);

create index idx_product_att_com_product_parent
    on llx_product_attribute_combination (fk_product_parent);

