create table llx_website_page
(
    rowid             int auto_increment
        primary key,
    fk_website        int                                   not null,
    type_container    varchar(16) default 'page'            not null,
    pageurl           varchar(255)                          not null,
    aliasalt          varchar(255)                          null,
    title             varchar(255)                          null,
    description       varchar(255)                          null,
    image             varchar(255)                          null,
    keywords          varchar(255)                          null,
    lang              varchar(6)                            null,
    fk_page           int                                   null,
    allowed_in_frames int         default 0                 null,
    htmlheader        text                                  null,
    content           mediumtext                            null,
    status            int         default 1                 null,
    grabbed_from      varchar(255)                          null,
    fk_user_creat     int                                   null,
    fk_user_modif     int                                   null,
    author_alias      varchar(64)                           null,
    date_creation     datetime                              null,
    tms               timestamp   default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    import_key        varchar(14)                           null,
    object_type       varchar(255)                          null,
    fk_object         varchar(255)                          null,
    constraint uk_website_page_url
        unique (fk_website, pageurl),
    constraint fk_website_page_website
        foreign key (fk_website) references llx_website (rowid)
)
    engine = InnoDB;

