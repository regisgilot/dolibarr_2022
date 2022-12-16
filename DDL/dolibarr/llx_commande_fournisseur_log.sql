create table llx_commande_fournisseur_log
(
    rowid       int auto_increment
        primary key,
    tms         timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    datelog     datetime                            not null,
    fk_commande int                                 not null,
    fk_statut   smallint                            not null,
    fk_user     int                                 not null,
    comment     varchar(255)                        null
)
    engine = InnoDB;

