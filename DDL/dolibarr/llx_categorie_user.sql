create table llx_categorie_user
(
    fk_categorie int         not null,
    fk_user      int         not null,
    import_key   varchar(14) null,
    primary key (fk_categorie, fk_user),
    constraint fk_categorie_user_categorie_rowid
        foreign key (fk_categorie) references llx_categorie (rowid),
    constraint fk_categorie_user_fk_user
        foreign key (fk_user) references llx_user (rowid)
)
    engine = InnoDB;

create index idx_categorie_user_fk_categorie
    on llx_categorie_user (fk_categorie);

create index idx_categorie_user_fk_user
    on llx_categorie_user (fk_user);

