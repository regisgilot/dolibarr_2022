create table llx_categorie_societe
(
    fk_categorie int         not null,
    fk_soc       int         not null,
    import_key   varchar(14) null,
    primary key (fk_categorie, fk_soc),
    constraint fk_categorie_societe_categorie_rowid
        foreign key (fk_categorie) references llx_categorie (rowid),
    constraint fk_categorie_societe_fk_soc
        foreign key (fk_soc) references llx_societe (rowid)
)
    engine = InnoDB;

create index idx_categorie_societe_fk_categorie
    on llx_categorie_societe (fk_categorie);

create index idx_categorie_societe_fk_societe
    on llx_categorie_societe (fk_soc);

