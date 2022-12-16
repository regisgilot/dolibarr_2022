create table dolibardev.llx_categorie_member
(
    fk_categorie int not null,
    fk_member    int not null,
    primary key (fk_categorie, fk_member),
    constraint fk_categorie_member_categorie_rowid
        foreign key (fk_categorie) references dolibardev.llx_categorie (rowid),
    constraint fk_categorie_member_member_rowid
        foreign key (fk_member) references dolibardev.llx_adherent (rowid)
)
    charset = latin1;

create index idx_categorie_member_fk_categorie
    on dolibardev.llx_categorie_member (fk_categorie);

create index idx_categorie_member_fk_member
    on dolibardev.llx_categorie_member (fk_member);

