create table llx_resource
(
    rowid                 int auto_increment
        primary key,
    entity                int       default 1                 not null,
    ref                   varchar(255)                        null,
    asset_number          varchar(255)                        null,
    description           text                                null,
    fk_code_type_resource varchar(32)                         null,
    datec                 datetime                            null,
    date_valid            datetime                            null,
    fk_user_author        int                                 null,
    fk_user_modif         int                                 null,
    fk_user_valid         int                                 null,
    fk_statut             smallint  default 0                 not null,
    note_public           text                                null,
    note_private          text                                null,
    import_key            varchar(14)                         null,
    extraparams           varchar(255)                        null,
    fk_country            int                                 null,
    tms                   timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    constraint uk_resource_ref
        unique (ref, entity),
    constraint fk_resource_fk_country
        foreign key (fk_country) references llx_c_country (rowid)
)
    engine = InnoDB;

create index fk_code_type_resource_idx
    on llx_resource (fk_code_type_resource);

create index idx_resource_fk_country
    on llx_resource (fk_country);

