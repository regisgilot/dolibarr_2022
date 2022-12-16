create table llx_prelevement_facture
(
    rowid                 int auto_increment
        primary key,
    fk_facture            int null,
    fk_facture_fourn      int null,
    fk_prelevement_lignes int not null,
    constraint fk_prelevement_facture_fk_prelevement_lignes
        foreign key (fk_prelevement_lignes) references llx_prelevement_lignes (rowid)
)
    engine = InnoDB;

create index idx_prelevement_facture_fk_prelevement_lignes
    on llx_prelevement_facture (fk_prelevement_lignes);

