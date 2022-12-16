create table llx_bom_bom
(
    rowid         int auto_increment
        primary key,
    entity        int           default 1                 not null,
    ref           varchar(128)                            not null,
    bomtype       int           default 0                 null,
    label         varchar(255)                            null,
    fk_product    int                                     null,
    description   text                                    null,
    note_public   text                                    null,
    note_private  text                                    null,
    fk_warehouse  int                                     null,
    qty           double(24, 8)                           null,
    efficiency    double(24, 8) default 1.00000000        null,
    duration      double(24, 8)                           null,
    date_creation datetime                                not null,
    date_valid    datetime                                null,
    tms           timestamp     default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_user_creat int                                     not null,
    fk_user_modif int                                     null,
    fk_user_valid int                                     null,
    import_key    varchar(14)                             null,
    model_pdf     varchar(255)                            null,
    status        int                                     not null,
    constraint uk_bom_bom_ref
        unique (ref, entity),
    constraint llx_bom_bom_fk_user_creat
        foreign key (fk_user_creat) references llx_user (rowid)
)
    engine = InnoDB;

create index idx_bom_bom_fk_product
    on llx_bom_bom (fk_product);

create index idx_bom_bom_ref
    on llx_bom_bom (ref);

create index idx_bom_bom_rowid
    on llx_bom_bom (rowid);

create index idx_bom_bom_status
    on llx_bom_bom (status);

