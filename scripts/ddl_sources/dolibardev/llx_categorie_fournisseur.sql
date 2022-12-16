create table dolibardev.llx_categorie_fournisseur
(
    fk_categorie int         not null,
    fk_soc       int         not null,
    import_key   varchar(14) null,
    primary key (fk_categorie, fk_soc),
    constraint fk_categorie_fournisseur_categorie_rowid
        foreign key (fk_categorie) references dolibardev.llx_categorie (rowid),
    constraint fk_categorie_fournisseur_fk_soc
        foreign key (fk_soc) references dolibardev.llx_societe (rowid)
)
    charset = latin1;

create index idx_categorie_fournisseur_fk_categorie
    on dolibardev.llx_categorie_fournisseur (fk_categorie);

create index idx_categorie_fournisseur_fk_societe
    on dolibardev.llx_categorie_fournisseur (fk_soc);

