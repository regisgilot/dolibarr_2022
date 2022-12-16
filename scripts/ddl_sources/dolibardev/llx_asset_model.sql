create table dolibardev.llx_asset_model
(
    rowid         int auto_increment
        primary key,
    entity        int       default 1                   not null,
    ref           varchar(128)                          not null,
    label         varchar(255)                          not null,
    asset_type    smallint                              not null,
    fk_pays       int       default 0                   null,
    note_public   text                                  null,
    note_private  text                                  null,
    date_creation datetime                              not null,
    tms           timestamp default current_timestamp() not null on update current_timestamp(),
    fk_user_creat int                                   not null,
    fk_user_modif int                                   null,
    import_key    varchar(14)                           null,
    status        smallint                              not null,
    constraint uk_asset_model
        unique (entity, ref),
    constraint fk_asset_model_user_creat
        foreign key (fk_user_creat) references dolibardev.llx_user (rowid),
    constraint fk_asset_model_user_modif
        foreign key (fk_user_modif) references dolibardev.llx_user (rowid)
);

create index idx_asset_model_entity
    on dolibardev.llx_asset_model (entity);

create index idx_asset_model_pays
    on dolibardev.llx_asset_model (fk_pays);

create index idx_asset_model_ref
    on dolibardev.llx_asset_model (ref);

create index idx_asset_model_rowid
    on dolibardev.llx_asset_model (rowid);

