create table llx_website
(
    rowid           int auto_increment
        primary key,
    type_container  varchar(16)     default 'page'            not null,
    entity          int             default 1                 not null,
    ref             varchar(128)                              not null,
    description     varchar(255)                              null,
    maincolor       varchar(16)                               null,
    maincolorbis    varchar(16)                               null,
    lang            varchar(8)                                null,
    otherlang       varchar(255)                              null,
    status          int             default 1                 null,
    fk_default_home int                                       null,
    use_manifest    int                                       null,
    virtualhost     varchar(255)                              null,
    fk_user_creat   int                                       null,
    fk_user_modif   int                                       null,
    date_creation   datetime                                  null,
    position        int             default 0                 null,
    lastaccess      datetime                                  null,
    pageviews_month bigint unsigned default 0                 null,
    pageviews_total bigint unsigned default 0                 null,
    tms             timestamp       default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    import_key      varchar(14)                               null,
    constraint uk_website_ref
        unique (ref, entity)
)
    engine = InnoDB;

