create table dolibardev.llx_element_categorie
(
    rowid        int auto_increment
        primary key,
    fk_categorie int         not null,
    fk_element   int         not null,
    import_key   varchar(14) null,
    constraint idx_element_categorie_idx
        unique (fk_element, fk_categorie),
    constraint fk_element_categorie_fk_categorie
        foreign key (fk_categorie) references dolibardev.llx_categorie (rowid)
);

