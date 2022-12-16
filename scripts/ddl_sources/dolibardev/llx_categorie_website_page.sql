create table dolibardev.llx_categorie_website_page
(
    fk_categorie    int         not null,
    fk_website_page int         not null,
    import_key      varchar(14) null,
    primary key (fk_categorie, fk_website_page),
    constraint fk_categorie_website_page_categorie_rowid
        foreign key (fk_categorie) references dolibardev.llx_categorie (rowid),
    constraint fk_categorie_website_page_website_page_rowid
        foreign key (fk_website_page) references dolibardev.llx_website_page (rowid)
);

create index idx_categorie_website_page_fk_categorie
    on dolibardev.llx_categorie_website_page (fk_categorie);

create index idx_categorie_website_page_fk_website_page
    on dolibardev.llx_categorie_website_page (fk_website_page);

