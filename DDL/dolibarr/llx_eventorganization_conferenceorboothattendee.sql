create table llx_eventorganization_conferenceorboothattendee
(
    rowid             int auto_increment
        primary key,
    ref               varchar(128)                        not null,
    fk_soc            int                                 null,
    fk_actioncomm     int                                 null,
    fk_project        int                                 not null,
    fk_invoice        int                                 null,
    email             varchar(128)                        null,
    email_company     varchar(128)                        null,
    firstname         varchar(100)                        null,
    lastname          varchar(100)                        null,
    date_subscription datetime                            null,
    amount            double                              null,
    note_public       text                                null,
    note_private      text                                null,
    date_creation     datetime                            not null,
    tms               timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_user_creat     int                                 null,
    fk_user_modif     int                                 null,
    last_main_doc     varchar(255)                        null,
    import_key        varchar(14)                         null,
    model_pdf         varchar(255)                        null,
    status            smallint                            not null,
    constraint uk_eventorganization_conferenceorboothattendee
        unique (fk_project, email, fk_actioncomm)
)
    engine = InnoDB;

create index idx_eventorganization_conferenceorboothattendee_email
    on llx_eventorganization_conferenceorboothattendee (email);

create index idx_eventorganization_conferenceorboothattendee_fk_actioncomm
    on llx_eventorganization_conferenceorboothattendee (fk_actioncomm);

create index idx_eventorganization_conferenceorboothattendee_fk_project
    on llx_eventorganization_conferenceorboothattendee (fk_project);

create index idx_eventorganization_conferenceorboothattendee_fk_soc
    on llx_eventorganization_conferenceorboothattendee (fk_soc);

create index idx_eventorganization_conferenceorboothattendee_ref
    on llx_eventorganization_conferenceorboothattendee (ref);

create index idx_eventorganization_conferenceorboothattendee_rowid
    on llx_eventorganization_conferenceorboothattendee (rowid);

create index idx_eventorganization_conferenceorboothattendee_status
    on llx_eventorganization_conferenceorboothattendee (status);

