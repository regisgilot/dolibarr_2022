create table dolibardev.llx_asset_depreciation_options_fiscal
(
    rowid                             int auto_increment
        primary key,
    fk_asset                          int                                   null,
    fk_asset_model                    int                                   null,
    depreciation_type                 smallint  default 0                   not null,
    degressive_coefficient            double(24, 8)                         null,
    duration                          smallint                              not null,
    duration_type                     smallint  default 0                   not null,
    amount_base_depreciation_ht       double(24, 8)                         null,
    amount_base_deductible_ht         double(24, 8)                         null,
    total_amount_last_depreciation_ht double(24, 8)                         null,
    tms                               timestamp default current_timestamp() not null on update current_timestamp(),
    fk_user_modif                     int                                   null,
    constraint uk_asset_dof_fk_asset
        unique (fk_asset),
    constraint uk_asset_dof_fk_asset_model
        unique (fk_asset_model),
    constraint fk_asset_dof_asset
        foreign key (fk_asset) references dolibardev.llx_asset (rowid),
    constraint fk_asset_dof_asset_model
        foreign key (fk_asset_model) references dolibardev.llx_asset_model (rowid),
    constraint fk_asset_dof_user_modif
        foreign key (fk_user_modif) references dolibardev.llx_user (rowid)
);

create index idx_asset_dof_rowid
    on dolibardev.llx_asset_depreciation_options_fiscal (rowid);

