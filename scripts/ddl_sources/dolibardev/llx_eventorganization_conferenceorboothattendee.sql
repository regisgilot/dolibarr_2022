create table dolibardev.llx_eventorganization_conferenceorboothattendee
(
    rowid             int auto_increment
        primary key,
    ref               varchar(128)                          not null,
    fk_soc            int                                   null,
    fk_actioncomm     int                                   null,
    fk_project        int                                   not null,
    fk_invoice        int                                   null,
    email             varchar(100)                          null,
    email_company     varchar(128)                          null,
    date_subscription datetime                              null,
    amount            double                                null,
    note_public       text                                  null,
    note_private      text                                  null,
    date_creation     datetime                              not null,
    tms               timestamp default current_timestamp() not null on update current_timestamp(),
    fk_user_creat     int                                   null,
    fk_user_modif     int                                   null,
    last_main_doc     varchar(255)                          null,
    import_key        varchar(14)                           null,
    model_pdf         varchar(255)                          null,
    status            smallint                              not null,
    firstname         varchar(100)                          null,
    lastname          varchar(100)                          null,
    ip                varchar(250)                          null,
    constraint uk_eventorganization_conferenceorboothattendee
        unique (fk_project, email, fk_actioncomm)
);

create index idx_eventorganization_conferenceorboothattendee_email
    on dolibardev.llx_eventorganization_conferenceorboothattendee (email);

create index idx_eventorganization_conferenceorboothattendee_fk_actioncomm
    on dolibardev.llx_eventorganization_conferenceorboothattendee (fk_actioncomm);

create index idx_eventorganization_conferenceorboothattendee_fk_soc
    on dolibardev.llx_eventorganization_conferenceorboothattendee (fk_soc);

create index idx_eventorganization_conferenceorboothattendee_ref
    on dolibardev.llx_eventorganization_conferenceorboothattendee (ref);

create index idx_eventorganization_conferenceorboothattendee_rowid
    on dolibardev.llx_eventorganization_conferenceorboothattendee (rowid);

create index idx_eventorganization_conferenceorboothattendee_status
    on dolibardev.llx_eventorganization_conferenceorboothattendee (status);

