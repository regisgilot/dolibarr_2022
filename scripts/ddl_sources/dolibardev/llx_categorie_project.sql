create table dolibardev.llx_categorie_project
(
    fk_categorie int         not null,
    fk_project   int         not null,
    import_key   varchar(14) null,
    primary key (fk_categorie, fk_project),
    constraint fk_categorie_project_categorie_rowid
        foreign key (fk_categorie) references dolibardev.llx_categorie (rowid),
    constraint fk_categorie_project_fk_project
        foreign key (fk_project) references dolibardev.llx_projet (rowid),
    constraint fk_categorie_project_fk_project_rowid
        foreign key (fk_project) references dolibardev.llx_projet (rowid)
);

create index idx_categorie_project_fk_categorie
    on dolibardev.llx_categorie_project (fk_categorie);

create index idx_categorie_project_fk_project
    on dolibardev.llx_categorie_project (fk_project);

