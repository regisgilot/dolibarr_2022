create table dolibardev.llx_projet
(
    rowid                         int auto_increment
        primary key,
    fk_soc                        int                                   null,
    datec                         datetime                              null,
    tms                           timestamp default current_timestamp() not null on update current_timestamp(),
    dateo                         date                                  null,
    datee                         date                                  null,
    ref                           varchar(50)                           null,
    entity                        int       default 1                   not null,
    title                         varchar(255)                          not null,
    description                   text                                  null,
    fk_user_creat                 int                                   not null,
    public                        int                                   null,
    fk_statut                     int       default 0                   not null,
    fk_opp_status                 int                                   null,
    opp_percent                   double(5, 2)                          null,
    date_close                    datetime                              null,
    fk_user_close                 int                                   null,
    note_private                  text                                  null,
    note_public                   text                                  null,
    opp_amount                    double(24, 8)                         null,
    budget_amount                 double(24, 8)                         null,
    model_pdf                     varchar(255)                          null,
    last_main_doc                 varchar(255)                          null,
    fk_user_modif                 int                                   null,
    import_key                    varchar(14)                           null,
    usage_bill_time               int       default 0                   null,
    usage_opportunity             int       default 0                   null,
    usage_task                    int       default 1                   null,
    usage_organize_event          int       default 0                   null,
    email_msgid                   varchar(255)                          null,
    fk_opp_status_end             int                                   null,
    accept_conference_suggestions int       default 0                   null,
    accept_booth_suggestions      int       default 0                   null,
    price_registration            double(24, 8)                         null,
    price_booth                   double(24, 8)                         null,
    max_attendees                 int       default 0                   null,
    ip                            varchar(250)                          null,
    date_start_event              datetime                              null,
    date_end_event                datetime                              null,
    location                      varchar(255)                          null,
    constraint uk_projet_ref
        unique (ref, entity),
    constraint fk_projet_fk_soc
        foreign key (fk_soc) references dolibardev.llx_societe (rowid)
)
    charset = latin1;

create index idx_projet_fk_soc
    on dolibardev.llx_projet (fk_soc);

