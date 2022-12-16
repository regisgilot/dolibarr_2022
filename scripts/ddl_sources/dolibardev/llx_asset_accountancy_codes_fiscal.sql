create table dolibardev.llx_asset_accountancy_codes_fiscal
(
    rowid                              int auto_increment
        primary key,
    fk_asset                           int                                   null,
    fk_asset_model                     int                                   null,
    accelerated_depreciation           varchar(32)                           null,
    endowment_accelerated_depreciation varchar(32)                           null,
    provision_accelerated_depreciation varchar(32)                           null,
    tms                                timestamp default current_timestamp() not null on update current_timestamp(),
    fk_user_modif                      int                                   null,
    constraint uk_asset_acf_fk_asset
        unique (fk_asset),
    constraint uk_asset_acf_fk_asset_model
        unique (fk_asset_model),
    constraint fk_asset_acf_asset
        foreign key (fk_asset) references dolibardev.llx_asset (rowid),
    constraint fk_asset_acf_asset_model
        foreign key (fk_asset_model) references dolibardev.llx_asset_model (rowid),
    constraint fk_asset_acf_user_modif
        foreign key (fk_user_modif) references dolibardev.llx_user (rowid)
);

create index idx_asset_acf_rowid
    on dolibardev.llx_asset_accountancy_codes_fiscal (rowid);

