create table llx_categorie_contact
(
    fk_categorie int         not null,
    fk_socpeople int         not null,
    import_key   varchar(14) null,
    primary key (fk_categorie, fk_socpeople),
    constraint fk_categorie_contact_categorie_rowid
        foreign key (fk_categorie) references llx_categorie (rowid),
    constraint fk_categorie_contact_fk_socpeople
        foreign key (fk_socpeople) references llx_socpeople (rowid)
)
    engine = InnoDB;

create index idx_categorie_contact_fk_categorie
    on llx_categorie_contact (fk_categorie);

create index idx_categorie_contact_fk_socpeople
    on llx_categorie_contact (fk_socpeople);

