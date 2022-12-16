create table llx_projet
(
    rowid                         int auto_increment
        primary key,
    fk_soc                        int                                 null,
    datec                         datetime                            null,
    tms                           timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    dateo                         date                                null,
    datee                         date                                null,
    ref                           varchar(50)                         null,
    entity                        int       default 1                 not null,
    title                         varchar(255)                        not null,
    description                   text                                null,
    fk_user_creat                 int                                 not null,
    fk_user_modif                 int                                 null,
    public                        int                                 null,
    fk_statut                     int       default 0                 not null,
    fk_opp_status                 int                                 null,
    opp_percent                   double(5, 2)                        null,
    fk_opp_status_end             int                                 null,
    date_close                    datetime                            null,
    fk_user_close                 int                                 null,
    note_private                  text                                null,
    note_public                   text                                null,
    email_msgid                   varchar(175)                        null,
    opp_amount                    double(24, 8)                       null,
    budget_amount                 double(24, 8)                       null,
    usage_opportunity             int       default 0                 null,
    usage_task                    int       default 1                 null,
    usage_bill_time               int       default 0                 null,
    usage_organize_event          int       default 0                 null,
    accept_conference_suggestions int       default 0                 null,
    accept_booth_suggestions      int       default 0                 null,
    max_attendees                 int       default 0                 null,
    price_registration            double(24, 8)                       null,
    price_booth                   double(24, 8)                       null,
    model_pdf                     varchar(255)                        null,
    last_main_doc                 varchar(255)                        null,
    import_key                    varchar(14)                         null,
    constraint uk_projet_ref
        unique (ref, entity),
    constraint fk_projet_fk_soc
        foreign key (fk_soc) references llx_societe (rowid)
)
    engine = InnoDB;

create index idx_projet_fk_opp_status
    on llx_projet (fk_opp_status);

create index idx_projet_fk_soc
    on llx_projet (fk_soc);

create index idx_projet_fk_statut
    on llx_projet (fk_statut);

create index idx_projet_ref
    on llx_projet (ref);

