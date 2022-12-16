create table dolibardev.llx_societe_perentity
(
    rowid                     int auto_increment
        primary key,
    fk_soc                    int           null,
    entity                    int default 1 not null,
    accountancy_code_customer varchar(24)   null,
    accountancy_code_supplier varchar(24)   null,
    accountancy_code_sell     varchar(32)   null,
    accountancy_code_buy      varchar(32)   null,
    constraint uk_societe_perentity
        unique (fk_soc, entity)
);

create index idx_societe_perentity_fk_soc
    on dolibardev.llx_societe_perentity (fk_soc);

