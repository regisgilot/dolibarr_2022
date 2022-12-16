create table dolibardev.llx_inventory
(
    rowid              int auto_increment
        primary key,
    entity             int       default 0                   null,
    ref                varchar(48)                           null,
    date_creation      datetime                              null,
    tms                timestamp default current_timestamp() not null on update current_timestamp(),
    fk_user_creat      int                                   null,
    fk_user_modif      int                                   null,
    fk_user_valid      int                                   null,
    fk_warehouse       int                                   null,
    status             int       default 0                   null,
    title              varchar(255)                          not null,
    date_inventory     datetime                              null,
    import_key         varchar(14)                           null,
    date_validation    datetime                              null,
    fk_product         int                                   null,
    categories_product varchar(255)                          null,
    constraint uk_inventory_ref
        unique (ref, entity)
);

create index idx_inventory_datec
    on dolibardev.llx_inventory (date_creation);

create index idx_inventory_tms
    on dolibardev.llx_inventory (tms);

