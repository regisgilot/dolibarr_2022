create table llx_prelevement_lignes
(
    rowid               int auto_increment
        primary key,
    fk_prelevement_bons int                              null,
    fk_soc              int                              not null,
    statut              smallint      default 0          null,
    client_nom          varchar(255)                     null,
    amount              double(24, 8) default 0.00000000 null,
    code_banque         varchar(128)                     null,
    code_guichet        varchar(6)                       null,
    number              varchar(255)                     null,
    cle_rib             varchar(5)                       null,
    note                text                             null,
    constraint fk_prelevement_lignes_fk_prelevement_bons
        foreign key (fk_prelevement_bons) references llx_prelevement_bons (rowid)
)
    engine = InnoDB;

create index idx_prelevement_lignes_fk_prelevement_bons
    on llx_prelevement_lignes (fk_prelevement_bons);

