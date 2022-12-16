create table llx_product_lang
(
    rowid       int auto_increment
        primary key,
    fk_product  int        default 0   not null,
    lang        varchar(5) default '0' not null,
    label       varchar(255)           not null,
    description text                   null,
    note        text                   null,
    import_key  varchar(14)            null,
    constraint uk_product_lang
        unique (fk_product, lang),
    constraint fk_product_lang_fk_product
        foreign key (fk_product) references llx_product (rowid)
)
    engine = InnoDB;

