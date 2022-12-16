create table dolibardev.llx_prelevement
(
    rowid                 int auto_increment
        primary key,
    fk_facture            int null,
    fk_prelevement_lignes int not null,
    fk_facture_fourn      int null,
    fk_salary             int null,
    constraint fk_prelevement_facture_fk_prelevement_lignes
        foreign key (fk_prelevement_lignes) references dolibardev.llx_prelevement_lignes (rowid)
)
    charset = latin1;

create index idx_prelevement_facture_fk_prelevement_lignes
    on dolibardev.llx_prelevement (fk_prelevement_lignes);

