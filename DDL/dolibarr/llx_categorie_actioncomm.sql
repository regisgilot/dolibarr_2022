create table llx_categorie_actioncomm
(
    fk_categorie  int         not null,
    fk_actioncomm int         not null,
    import_key    varchar(14) null,
    primary key (fk_categorie, fk_actioncomm),
    constraint fk_categorie_actioncomm_categorie_rowid
        foreign key (fk_categorie) references llx_categorie (rowid),
    constraint fk_categorie_actioncomm_fk_actioncomm
        foreign key (fk_actioncomm) references llx_actioncomm (id)
)
    engine = InnoDB;

create index idx_categorie_actioncomm_fk_actioncomm
    on llx_categorie_actioncomm (fk_actioncomm);

create index idx_categorie_actioncomm_fk_categorie
    on llx_categorie_actioncomm (fk_categorie);

