create table dolibardev.llx_product_attribute_value
(
    rowid                int auto_increment
        primary key,
    fk_product_attribute int           not null,
    ref                  varchar(180)  not null,
    value                varchar(255)  not null,
    entity               int default 1 not null,
    position             int default 0 not null,
    constraint uk_product_attribute_value
        unique (fk_product_attribute, ref)
);

