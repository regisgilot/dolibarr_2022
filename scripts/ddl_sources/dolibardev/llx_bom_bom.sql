create table dolibardev.llx_bom_bom
(
    rowid         int auto_increment
        primary key,
    entity        int       default 1                   not null,
    ref           varchar(128)                          not null,
    label         varchar(255)                          null,
    description   text                                  null,
    note_public   text                                  null,
    note_private  text                                  null,
    fk_product    int                                   null,
    qty           double(24, 8)                         null,
    efficiency    double(8, 4)                          null,
    date_creation datetime                              not null,
    tms           timestamp default current_timestamp() not null on update current_timestamp(),
    date_valid    datetime                              null,
    fk_user_creat int                                   not null,
    fk_user_modif int                                   null,
    fk_user_valid int                                   null,
    import_key    varchar(14)                           null,
    status        int                                   not null,
    duration      double(24, 8)                         null,
    fk_warehouse  int                                   null,
    model_pdf     varchar(255)                          null,
    bomtype       int       default 0                   null,
    constraint uk_bom_bom_ref
        unique (ref, entity),
    constraint llx_bom_bom_fk_user_creat
        foreign key (fk_user_creat) references dolibardev.llx_user (rowid)
);

create index idx_bom_bom_fk_product
    on dolibardev.llx_bom_bom (fk_product);

create index idx_bom_bom_ref
    on dolibardev.llx_bom_bom (ref);

create index idx_bom_bom_rowid
    on dolibardev.llx_bom_bom (rowid);

create index idx_bom_bom_status
    on dolibardev.llx_bom_bom (status);

