create table dolibardev.llx_website_page
(
    rowid             int auto_increment
        primary key,
    fk_website        int                                     null,
    pageurl           varchar(255)                            null,
    aliasalt          varchar(255)                            null,
    title             varchar(255)                            null,
    description       varchar(255)                            null,
    keywords          varchar(255)                            null,
    content           mediumtext                              null,
    status            int         default 1                   null,
    date_creation     datetime                                null,
    date_modification datetime                                null,
    tms               timestamp   default current_timestamp() not null on update current_timestamp(),
    fk_user_creat     int                                     null,
    fk_user_modif     int                                     null,
    type_container    varchar(16) default 'page'              not null,
    lang              varchar(6)                              null,
    fk_page           int                                     null,
    grabbed_from      varchar(255)                            null,
    htmlheader        mediumtext                              null,
    import_key        varchar(14)                             null,
    image             varchar(255)                            null,
    author_alias      varchar(64)                             null,
    allowed_in_frames int         default 0                   null,
    object_type       varchar(255)                            null,
    fk_object         varchar(255)                            null,
    constraint uk_website_page_url
        unique (fk_website, pageurl),
    constraint fk_website_page_website
        foreign key (fk_website) references dolibardev.llx_website (rowid)
);

