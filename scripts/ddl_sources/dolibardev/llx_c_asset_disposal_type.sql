create table dolibardev.llx_c_asset_disposal_type
(
    rowid  int auto_increment
        primary key,
    entity int default 1 not null,
    code   varchar(16)   not null,
    label  varchar(50)   not null,
    active int default 1 not null,
    constraint uk_c_asset_disposal_type
        unique (code, entity)
);

