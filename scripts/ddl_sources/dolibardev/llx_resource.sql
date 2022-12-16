create table dolibardev.llx_resource
(
    rowid                 int auto_increment
        primary key,
    entity                int       default 1                   not null,
    ref                   varchar(255)                          null,
    asset_number          varchar(255)                          null,
    description           text                                  null,
    fk_code_type_resource varchar(32)                           null,
    note_public           text                                  null,
    note_private          text                                  null,
    tms                   timestamp default current_timestamp() not null on update current_timestamp(),
    datec                 datetime                              null,
    date_valid            datetime                              null,
    fk_user_author        int                                   null,
    fk_user_modif         int                                   null,
    fk_user_valid         int                                   null,
    fk_statut             smallint  default 0                   not null,
    import_key            varchar(14)                           null,
    extraparams           varchar(255)                          null,
    fk_country            int                                   null,
    constraint uk_resource_ref
        unique (ref, entity),
    constraint fk_resource_fk_country
        foreign key (fk_country) references dolibardev.llx_c_country (rowid)
)
    charset = latin1;

create index fk_code_type_resource_idx
    on dolibardev.llx_resource (fk_code_type_resource);

create index idx_resource_fk_country
    on dolibardev.llx_resource (fk_country);

