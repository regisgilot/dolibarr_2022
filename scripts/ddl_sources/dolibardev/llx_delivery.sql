create table dolibardev.llx_delivery
(
    rowid              int auto_increment
        primary key,
    tms                timestamp     default current_timestamp() not null on update current_timestamp(),
    ref                varchar(30)                               not null,
    entity             int           default 1                   not null,
    fk_soc             int                                       not null,
    ref_ext            varchar(255)                              null,
    ref_int            varchar(30)                               null,
    ref_customer       varchar(30)                               null,
    date_creation      datetime                                  null,
    fk_user_author     int                                       null,
    date_valid         datetime                                  null,
    fk_user_valid      int                                       null,
    date_delivery      datetime                                  null,
    fk_address         int                                       null,
    fk_statut          smallint      default 0                   null,
    total_ht           double(24, 8) default 0.00000000          null,
    note_private       text                                      null,
    note_public        text                                      null,
    model_pdf          varchar(255)                              null,
    fk_incoterms       int                                       null,
    location_incoterms varchar(255)                              null,
    last_main_doc      varchar(255)                              null,
    import_key         varchar(14)                               null,
    extraparams        varchar(255)                              null,
    constraint idx_delivery_uk_ref
        unique (ref, entity),
    constraint fk_delivery_fk_soc
        foreign key (fk_soc) references dolibardev.llx_societe (rowid),
    constraint fk_delivery_fk_user_author
        foreign key (fk_user_author) references dolibardev.llx_user (rowid),
    constraint fk_delivery_fk_user_valid
        foreign key (fk_user_valid) references dolibardev.llx_user (rowid)
)
    charset = latin1;

create index idx_delivery_fk_soc
    on dolibardev.llx_delivery (fk_soc);

create index idx_delivery_fk_user_author
    on dolibardev.llx_delivery (fk_user_author);

create index idx_delivery_fk_user_valid
    on dolibardev.llx_delivery (fk_user_valid);

