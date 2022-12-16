create table dolibardev.llx_commande_fournisseur_log
(
    rowid       int auto_increment
        primary key,
    tms         timestamp default current_timestamp() not null on update current_timestamp(),
    datelog     datetime                              not null,
    fk_commande int                                   not null,
    fk_statut   smallint                              not null,
    fk_user     int                                   not null,
    comment     varchar(255)                          null
)
    charset = latin1;

