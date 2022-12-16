create table dolibardev.llx_paiement_facture
(
    rowid                int auto_increment
        primary key,
    fk_paiement          int                              null,
    fk_facture           int                              null,
    amount               double(24, 8) default 0.00000000 null,
    multicurrency_amount double(24, 8) default 0.00000000 null,
    multicurrency_code   varchar(3)                       null,
    multicurrency_tx     double(24, 8) default 1.00000000 null,
    constraint uk_paiement_facture
        unique (fk_paiement, fk_facture),
    constraint fk_paiement_facture_fk_facture
        foreign key (fk_facture) references dolibardev.llx_facture (rowid),
    constraint fk_paiement_facture_fk_paiement
        foreign key (fk_paiement) references dolibardev.llx_paiement (rowid)
)
    charset = latin1;

create index idx_paiement_facture_fk_facture
    on dolibardev.llx_paiement_facture (fk_facture);

create index idx_paiement_facture_fk_paiement
    on dolibardev.llx_paiement_facture (fk_paiement);

