create table llx_paiementfourn_facturefourn
(
    rowid                int auto_increment
        primary key,
    fk_paiementfourn     int                              null,
    fk_facturefourn      int                              null,
    amount               double(24, 8) default 0.00000000 null,
    multicurrency_code   varchar(3)                       null,
    multicurrency_tx     double(24, 8) default 1.00000000 null,
    multicurrency_amount double(24, 8) default 0.00000000 null,
    constraint uk_paiementfourn_facturefourn
        unique (fk_paiementfourn, fk_facturefourn)
)
    engine = InnoDB;

create index idx_paiementfourn_facturefourn_fk_facture
    on llx_paiementfourn_facturefourn (fk_facturefourn);

create index idx_paiementfourn_facturefourn_fk_paiement
    on llx_paiementfourn_facturefourn (fk_paiementfourn);

