create table dolibardev.llx_categorie_product
(
    fk_categorie int         not null,
    fk_product   int         not null,
    import_key   varchar(14) null,
    primary key (fk_categorie, fk_product),
    constraint fk_categorie_product_categorie_rowid
        foreign key (fk_categorie) references dolibardev.llx_categorie (rowid),
    constraint fk_categorie_product_product_rowid
        foreign key (fk_product) references dolibardev.llx_product (rowid)
)
    charset = latin1;

create index idx_categorie_product_fk_categorie
    on dolibardev.llx_categorie_product (fk_categorie);

create index idx_categorie_product_fk_product
    on dolibardev.llx_categorie_product (fk_product);

