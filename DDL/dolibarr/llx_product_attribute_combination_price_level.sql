create table llx_product_attribute_combination_price_level
(
    rowid                            int auto_increment
        primary key,
    fk_product_attribute_combination int default 1 not null,
    fk_price_level                   int default 1 not null,
    variation_price                  double(24, 8) not null,
    variation_price_percentage       int           null,
    constraint fk_product_attribute_combination
        unique (fk_product_attribute_combination, fk_price_level)
)
    engine = InnoDB;

