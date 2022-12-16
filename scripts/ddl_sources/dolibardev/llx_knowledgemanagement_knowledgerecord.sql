create table dolibardev.llx_knowledgemanagement_knowledgerecord
(
    rowid                int auto_increment
        primary key,
    ref                  varchar(128)                          not null,
    date_creation        datetime                              not null,
    tms                  timestamp default current_timestamp() not null on update current_timestamp(),
    last_main_doc        varchar(255)                          null,
    fk_user_creat        int                                   not null,
    fk_user_modif        int                                   null,
    fk_user_valid        int                                   null,
    import_key           varchar(14)                           null,
    model_pdf            varchar(255)                          null,
    question             text                                  not null,
    answer               text                                  null,
    url                  varchar(255)                          null,
    fk_ticket            int                                   null,
    fk_c_ticket_category int                                   null,
    status               int                                   not null,
    lang                 varchar(6)                            null,
    entity               int       default 1                   null
);

