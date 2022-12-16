create table dolibardev.llx_categorie_ticket
(
    fk_categorie int         not null,
    fk_ticket    int         not null,
    import_key   varchar(14) null,
    primary key (fk_categorie, fk_ticket),
    constraint fk_categorie_ticket_categorie_rowid
        foreign key (fk_categorie) references dolibardev.llx_categorie (rowid),
    constraint fk_categorie_ticket_ticket_rowid
        foreign key (fk_ticket) references dolibardev.llx_ticket (rowid)
);

create index idx_categorie_ticket_fk_categorie
    on dolibardev.llx_categorie_ticket (fk_categorie);

create index idx_categorie_ticket_fk_ticket
    on dolibardev.llx_categorie_ticket (fk_ticket);

