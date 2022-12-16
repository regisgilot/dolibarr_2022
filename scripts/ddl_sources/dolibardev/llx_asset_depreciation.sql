create table dolibardev.llx_asset_depreciation
(
    rowid                      int auto_increment
        primary key,
    fk_asset                   int                                   not null,
    depreciation_mode          varchar(255)                          not null,
    ref                        varchar(255)                          not null,
    depreciation_date          datetime                              not null,
    depreciation_ht            double(24, 8)                         not null,
    cumulative_depreciation_ht double(24, 8)                         not null,
    accountancy_code_debit     varchar(32)                           null,
    accountancy_code_credit    varchar(32)                           null,
    tms                        timestamp default current_timestamp() not null on update current_timestamp(),
    fk_user_modif              int                                   null,
    constraint uk_asset_depreciation_fk_asset
        unique (fk_asset, depreciation_mode, ref),
    constraint fk_asset_depreciation_asset
        foreign key (fk_asset) references dolibardev.llx_asset (rowid),
    constraint fk_asset_depreciation_user_modif
        foreign key (fk_user_modif) references dolibardev.llx_user (rowid)
);

create index idx_asset_depreciation_depreciation_mode
    on dolibardev.llx_asset_depreciation (depreciation_mode);

create index idx_asset_depreciation_fk_asset
    on dolibardev.llx_asset_depreciation (fk_asset);

create index idx_asset_depreciation_ref
    on dolibardev.llx_asset_depreciation (ref);

create index idx_asset_depreciation_rowid
    on dolibardev.llx_asset_depreciation (rowid);

