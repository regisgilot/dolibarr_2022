create table dolibardev.llx_stock_mouvement
(
    rowid          int auto_increment
        primary key,
    tms            timestamp     default current_timestamp() not null on update current_timestamp(),
    datem          datetime                                  null,
    fk_product     int                                       not null,
    batch          varchar(128)                              null,
    eatby          date                                      null,
    sellby         date                                      null,
    fk_entrepot    int                                       not null,
    value          double                                    null,
    price          double(24, 8) default 0.00000000          null,
    type_mouvement smallint                                  null,
    fk_user_author int                                       null,
    label          varchar(255)                              null,
    inventorycode  varchar(128)                              null,
    fk_origin      int                                       null,
    origintype     varchar(64)                               null,
    model_pdf      varchar(255)                              null,
    fk_projet      int           default 0                   not null,
    fk_project     int                                       null
)
    charset = latin1;

create index idx_stock_mouvement_fk_entrepot
    on dolibardev.llx_stock_mouvement (fk_entrepot);

create index idx_stock_mouvement_fk_product
    on dolibardev.llx_stock_mouvement (fk_product);

