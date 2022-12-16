create table dolibardev.llx_commande_fournisseur_dispatch
(
    rowid               int auto_increment
        primary key,
    fk_commande         int                                       null,
    fk_product          int                                       null,
    fk_commandefourndet int                                       null,
    qty                 float                                     null,
    fk_entrepot         int                                       null,
    fk_user             int                                       null,
    comment             varchar(255)                              null,
    batch               varchar(128)                              null,
    eatby               date                                      null,
    sellby              date                                      null,
    status              int                                       null,
    datec               datetime                                  null,
    tms                 timestamp     default current_timestamp() not null on update current_timestamp(),
    fk_projet           int                                       null,
    fk_reception        int                                       null,
    cost_price          double(24, 8) default 0.00000000          null
)
    charset = latin1;

create index idx_commande_fournisseur_dispatch_fk_commande
    on dolibardev.llx_commande_fournisseur_dispatch (fk_commande);

create index idx_commande_fournisseur_dispatch_fk_product
    on dolibardev.llx_commande_fournisseur_dispatch (fk_product);

