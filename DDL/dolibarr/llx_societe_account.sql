create table llx_societe_account
(
    rowid               int auto_increment
        primary key,
    entity              int       default 1                 null,
    login               varchar(128)                        not null,
    pass_encoding       varchar(24)                         null,
    pass_crypted        varchar(128)                        null,
    pass_temp           varchar(128)                        null,
    fk_soc              int                                 null,
    fk_website          int                                 null,
    site                varchar(128)                        null,
    site_account        varchar(128)                        null,
    key_account         varchar(128)                        null,
    note_private        text                                null,
    date_last_login     datetime                            null,
    date_previous_login datetime                            null,
    date_creation       datetime                            not null,
    tms                 timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_user_creat       int                                 not null,
    fk_user_modif       int                                 null,
    import_key          varchar(14)                         null,
    status              int                                 null,
    constraint uk_societe_account_key_account_soc
        unique (entity, fk_soc, key_account, site, fk_website),
    constraint uk_societe_account_login_website_soc
        unique (entity, fk_soc, login, site, fk_website),
    constraint llx_societe_account_fk_societe
        foreign key (fk_soc) references llx_societe (rowid)
)
    engine = InnoDB;

create index idx_societe_account_fk_soc
    on llx_societe_account (fk_soc);

create index idx_societe_account_fk_website
    on llx_societe_account (fk_website);

create index idx_societe_account_login
    on llx_societe_account (login);

create index idx_societe_account_rowid
    on llx_societe_account (rowid);

create index idx_societe_account_status
    on llx_societe_account (status);

