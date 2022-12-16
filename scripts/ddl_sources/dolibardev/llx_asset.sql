create table dolibardev.llx_asset
(
    rowid                   int auto_increment
        primary key,
    ref                     varchar(128)                          not null,
    entity                  int       default 1                   not null,
    label                   varchar(255)                          null,
    fk_asset_model          int                                   null,
    reversal_amount_ht      double(24, 8)                         null,
    acquisition_value_ht    double(24, 8)                         not null,
    recovered_vat           double(24, 8)                         null,
    reversal_date           date                                  null,
    date_acquisition        date                                  not null,
    date_start              date                                  not null,
    qty                     double    default 1                   not null,
    acquisition_type        smallint  default 0                   not null,
    asset_type              smallint  default 0                   not null,
    not_depreciated         int       default 0                   null,
    disposal_date           date                                  null,
    disposal_amount_ht      double(24, 8)                         null,
    fk_disposal_type        int                                   null,
    disposal_depreciated    int       default 0                   null,
    disposal_subject_to_vat int       default 0                   null,
    note_public             text                                  null,
    note_private            text                                  null,
    date_creation           datetime                              not null,
    tms                     timestamp default current_timestamp() not null on update current_timestamp(),
    fk_user_creat           int                                   not null,
    fk_user_modif           int                                   null,
    last_main_doc           varchar(255)                          null,
    import_key              varchar(14)                           null,
    model_pdf               varchar(255)                          null,
    status                  int                                   not null,
    constraint fk_asset_asset_model
        foreign key (fk_asset_model) references dolibardev.llx_asset_model (rowid),
    constraint fk_asset_disposal_type
        foreign key (fk_disposal_type) references dolibardev.llx_c_asset_disposal_type (rowid),
    constraint fk_asset_user_creat
        foreign key (fk_user_creat) references dolibardev.llx_user (rowid),
    constraint fk_asset_user_modif
        foreign key (fk_user_modif) references dolibardev.llx_user (rowid)
);

create index idx_asset_entity
    on dolibardev.llx_asset (entity);

create index idx_asset_fk_asset_model
    on dolibardev.llx_asset (fk_asset_model);

create index idx_asset_fk_disposal_type
    on dolibardev.llx_asset (fk_disposal_type);

create index idx_asset_ref
    on dolibardev.llx_asset (ref);

create index idx_asset_rowid
    on dolibardev.llx_asset (rowid);

