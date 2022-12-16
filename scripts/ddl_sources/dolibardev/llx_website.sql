create table dolibardev.llx_website
(
    rowid             int auto_increment
        primary key,
    entity            int             default 1                   not null,
    ref               varchar(128)                                null,
    description       varchar(255)                                null,
    status            int                                         null,
    fk_default_home   int                                         null,
    virtualhost       varchar(255)                                null,
    date_creation     datetime                                    null,
    date_modification datetime                                    null,
    tms               timestamp       default current_timestamp() not null on update current_timestamp(),
    fk_user_creat     int                                         null,
    fk_user_modif     int                                         null,
    import_key        varchar(14)                                 null,
    maincolor         varchar(16)                                 null,
    maincolorbis      varchar(16)                                 null,
    use_manifest      int                                         null,
    lang              varchar(8)                                  null,
    otherlang         varchar(255)                                null,
    position          int             default 0                   null,
    lastaccess        datetime                                    null,
    pageviews_month   bigint unsigned default 0                   null,
    pageviews_total   bigint unsigned default 0                   null,
    constraint uk_website_ref
        unique (ref, entity)
);

