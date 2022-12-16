create table llx_reception
(
    rowid              int auto_increment
        primary key,
    tms                timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    ref                varchar(30)                         not null,
    entity             int       default 1                 not null,
    fk_soc             int                                 not null,
    fk_projet          int                                 null,
    ref_ext            varchar(30)                         null,
    ref_int            varchar(30)                         null,
    ref_supplier       varchar(128)                        null,
    date_creation      datetime                            null,
    fk_user_author     int                                 null,
    fk_user_modif      int                                 null,
    date_valid         datetime                            null,
    fk_user_valid      int                                 null,
    date_delivery      datetime                            null,
    date_reception     datetime                            null,
    fk_shipping_method int                                 null,
    tracking_number    varchar(50)                         null,
    fk_statut          smallint  default 0                 null,
    billed             smallint  default 0                 null,
    height             float                               null,
    width              float                               null,
    size_units         int                                 null,
    size               float                               null,
    weight_units       int                                 null,
    weight             float                               null,
    note_private       text                                null,
    note_public        text                                null,
    model_pdf          varchar(255)                        null,
    fk_incoterms       int                                 null,
    location_incoterms varchar(255)                        null,
    import_key         varchar(14)                         null,
    extraparams        varchar(255)                        null,
    constraint idx_reception_uk_ref
        unique (ref, entity),
    constraint fk_reception_fk_shipping_method
        foreign key (fk_shipping_method) references llx_c_shipment_mode (rowid),
    constraint fk_reception_fk_soc
        foreign key (fk_soc) references llx_societe (rowid),
    constraint fk_reception_fk_user_author
        foreign key (fk_user_author) references llx_user (rowid),
    constraint fk_reception_fk_user_valid
        foreign key (fk_user_valid) references llx_user (rowid)
)
    engine = InnoDB;

create index idx_reception_fk_shipping_method
    on llx_reception (fk_shipping_method);

create index idx_reception_fk_soc
    on llx_reception (fk_soc);

create index idx_reception_fk_user_author
    on llx_reception (fk_user_author);

create index idx_reception_fk_user_valid
    on llx_reception (fk_user_valid);

