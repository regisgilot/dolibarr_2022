create table llx_commande_fournisseur_dispatch
(
    rowid               int auto_increment
        primary key,
    fk_commande         int                                     null,
    fk_product          int                                     null,
    fk_commandefourndet int                                     null,
    fk_projet           int                                     null,
    fk_reception        int                                     null,
    qty                 float                                   null,
    fk_entrepot         int                                     null,
    fk_user             int                                     null,
    comment             varchar(255)                            null,
    batch               varchar(128)                            null,
    eatby               date                                    null,
    sellby              date                                    null,
    status              int                                     null,
    datec               datetime                                null,
    tms                 timestamp     default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    cost_price          double(24, 8) default 0.00000000        null,
    constraint fk_commande_fournisseur_dispatch_fk_reception
        foreign key (fk_reception) references llx_reception (rowid)
)
    engine = InnoDB;

create index idx_commande_fournisseur_dispatch_fk_commande
    on llx_commande_fournisseur_dispatch (fk_commande);

create index idx_commande_fournisseur_dispatch_fk_reception
    on llx_commande_fournisseur_dispatch (fk_reception);

