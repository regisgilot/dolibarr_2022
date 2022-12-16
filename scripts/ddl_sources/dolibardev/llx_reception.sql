create table dolibardev.llx_reception
(
    rowid              int auto_increment
        primary key,
    tms                timestamp default current_timestamp() not null on update current_timestamp(),
    ref                varchar(30)                           not null,
    entity             int       default 1                   not null,
    fk_soc             int                                   not null,
    fk_projet          int                                   null,
    ref_ext            varchar(30)                           null,
    ref_int            varchar(30)                           null,
    ref_supplier       varchar(128)                          null,
    date_creation      datetime                              null,
    fk_user_author     int                                   null,
    fk_user_modif      int                                   null,
    date_valid         datetime                              null,
    fk_user_valid      int                                   null,
    date_delivery      datetime                              null,
    date_reception     datetime                              null,
    fk_shipping_method int                                   null,
    tracking_number    varchar(50)                           null,
    fk_statut          smallint  default 0                   null,
    billed             smallint  default 0                   null,
    height             float                                 null,
    width              float                                 null,
    size_units         int                                   null,
    size               float                                 null,
    weight_units       int                                   null,
    weight             float                                 null,
    note_private       text                                  null,
    note_public        text                                  null,
    model_pdf          varchar(255)                          null,
    fk_incoterms       int                                   null,
    location_incoterms varchar(255)                          null,
    import_key         varchar(14)                           null,
    extraparams        varchar(255)                          null,
    constraint idx_reception_uk_ref
        unique (ref, entity)
);

create index idx_reception_fk_shipping_method
    on dolibardev.llx_reception (fk_shipping_method);

create index idx_reception_fk_soc
    on dolibardev.llx_reception (fk_soc);

create index idx_reception_fk_user_author
    on dolibardev.llx_reception (fk_user_author);

create index idx_reception_fk_user_valid
    on dolibardev.llx_reception (fk_user_valid);

