create table dolibardev.llx_categorie_account
(
    fk_categorie int         not null,
    fk_account   int         not null,
    import_key   varchar(14) null,
    primary key (fk_categorie, fk_account),
    constraint fk_categorie_account_categorie_rowid
        foreign key (fk_categorie) references dolibardev.llx_categorie (rowid),
    constraint fk_categorie_account_fk_account
        foreign key (fk_account) references dolibardev.llx_bank_account (rowid)
);

create index idx_categorie_account_fk_account
    on dolibardev.llx_categorie_account (fk_account);

create index idx_categorie_account_fk_categorie
    on dolibardev.llx_categorie_account (fk_categorie);

