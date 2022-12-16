create table dolibardev.llx_categorie_contact
(
    fk_categorie int         not null,
    fk_socpeople int         not null,
    import_key   varchar(14) null,
    primary key (fk_categorie, fk_socpeople),
    constraint fk_categorie_contact_categorie_rowid
        foreign key (fk_categorie) references dolibardev.llx_categorie (rowid),
    constraint fk_categorie_contact_fk_socpeople
        foreign key (fk_socpeople) references dolibardev.llx_socpeople (rowid)
)
    charset = latin1;

create index idx_categorie_contact_fk_categorie
    on dolibardev.llx_categorie_contact (fk_categorie);

create index idx_categorie_contact_fk_socpeople
    on dolibardev.llx_categorie_contact (fk_socpeople);

