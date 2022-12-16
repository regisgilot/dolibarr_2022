create table llx_product_attribute_combination2val
(
    rowid               int auto_increment
        primary key,
    fk_prod_combination int not null,
    fk_prod_attr        int not null,
    fk_prod_attr_val    int not null
)
    engine = InnoDB;

