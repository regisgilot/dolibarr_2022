create table dolibardev.llx_categorie_knowledgemanagement
(
    fk_categorie           int         not null,
    fk_knowledgemanagement int         not null,
    import_key             varchar(14) null,
    primary key (fk_categorie, fk_knowledgemanagement),
    constraint fk_categorie_knowledgemanagement_categorie_rowid
        foreign key (fk_categorie) references dolibardev.llx_categorie (rowid),
    constraint fk_categorie_knowledgemanagement_knowledgemanagement_rowid
        foreign key (fk_knowledgemanagement) references dolibardev.llx_knowledgemanagement_knowledgerecord (rowid)
);

create index idx_categorie_knowledgemanagement_fk_categorie
    on dolibardev.llx_categorie_knowledgemanagement (fk_categorie);

create index idx_categorie_knowledgemanagement_fk_knowledgemanagement
    on dolibardev.llx_categorie_knowledgemanagement (fk_knowledgemanagement);

