create table llx_product_attribute
(
    rowid    int auto_increment
        primary key,
    ref      varchar(255)  not null,
    ref_ext  varchar(255)  null,
    label    varchar(255)  not null,
    position int default 0 not null,
    entity   int default 1 not null,
    constraint uk_product_attribute_ref
        unique (ref)
)
    engine = InnoDB;

