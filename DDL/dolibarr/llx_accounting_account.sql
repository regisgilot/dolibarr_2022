create table llx_accounting_account
(
    rowid                  bigint auto_increment
        primary key,
    entity                 int       default 1                 not null,
    datec                  datetime                            null,
    tms                    timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_pcg_version         varchar(32)                         not null,
    pcg_type               varchar(20)                         not null,
    account_number         varchar(32)                         not null,
    account_parent         int       default 0                 null,
    label                  varchar(255)                        not null,
    labelshort             varchar(255)                        null,
    fk_accounting_category int       default 0                 null,
    fk_user_author         int                                 null,
    fk_user_modif          int                                 null,
    active                 tinyint   default 1                 not null,
    reconcilable           tinyint   default 0                 not null,
    import_key             varchar(14)                         null,
    extraparams            varchar(255)                        null,
    constraint uk_accounting_account
        unique (account_number, entity, fk_pcg_version),
    constraint fk_accounting_account_fk_pcg_version
        foreign key (fk_pcg_version) references llx_accounting_system (pcg_version)
)
    engine = InnoDB;

create index idx_accounting_account_account_parent
    on llx_accounting_account (account_parent);

create index idx_accounting_account_fk_pcg_version
    on llx_accounting_account (fk_pcg_version);

