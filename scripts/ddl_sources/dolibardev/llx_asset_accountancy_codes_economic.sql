create table dolibardev.llx_asset_accountancy_codes_economic
(
    rowid                    int auto_increment
        primary key,
    fk_asset                 int                                   null,
    fk_asset_model           int                                   null,
    asset                    varchar(32)                           null,
    depreciation_asset       varchar(32)                           null,
    depreciation_expense     varchar(32)                           null,
    value_asset_sold         varchar(32)                           null,
    receivable_on_assignment varchar(32)                           null,
    proceeds_from_sales      varchar(32)                           null,
    vat_collected            varchar(32)                           null,
    vat_deductible           varchar(32)                           null,
    tms                      timestamp default current_timestamp() not null on update current_timestamp(),
    fk_user_modif            int                                   null,
    constraint uk_asset_ace_fk_asset
        unique (fk_asset),
    constraint uk_asset_ace_fk_asset_model
        unique (fk_asset_model),
    constraint fk_asset_ace_asset
        foreign key (fk_asset) references dolibardev.llx_asset (rowid),
    constraint fk_asset_ace_asset_model
        foreign key (fk_asset_model) references dolibardev.llx_asset_model (rowid),
    constraint fk_asset_ace_user_modif
        foreign key (fk_user_modif) references dolibardev.llx_user (rowid)
);

create index idx_asset_ace_rowid
    on dolibardev.llx_asset_accountancy_codes_economic (rowid);

