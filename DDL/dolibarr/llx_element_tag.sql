create table llx_element_tag
(
    rowid        int auto_increment
        primary key,
    fk_categorie int         not null,
    fk_element   int         not null,
    import_key   varchar(14) null,
    constraint idx_element_tag_uk
        unique (fk_categorie, fk_element),
    constraint fk_element_tag_categorie_rowid
        foreign key (fk_categorie) references llx_categorie (rowid)
)
    engine = InnoDB;

