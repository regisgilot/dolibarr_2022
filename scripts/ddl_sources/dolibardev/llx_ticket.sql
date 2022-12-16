create table dolibardev.llx_ticket
(
    rowid                  int auto_increment
        primary key,
    entity                 int       default 1                   null,
    ref                    varchar(128)                          not null,
    track_id               varchar(128)                          not null,
    fk_soc                 int       default 0                   null,
    fk_project             int       default 0                   null,
    origin_email           varchar(128)                          null,
    fk_user_create         int                                   null,
    fk_user_assign         int                                   null,
    subject                varchar(255)                          null,
    message                text                                  null,
    fk_statut              int                                   null,
    resolution             int                                   null,
    progress               int                                   null,
    timing                 varchar(20)                           null,
    type_code              varchar(32)                           null,
    category_code          varchar(32)                           null,
    severity_code          varchar(32)                           null,
    datec                  datetime                              null,
    date_read              datetime                              null,
    date_last_msg_sent     datetime                              null,
    date_close             datetime                              null,
    notify_tiers_at_create tinyint                               null,
    tms                    timestamp default current_timestamp() not null on update current_timestamp(),
    import_key             varchar(14)                           null,
    email_msgid            varchar(255)                          null,
    email_date             datetime                              null,
    ip                     varchar(250)                          null,
    constraint uk_ticket_ref
        unique (ref, entity),
    constraint uk_ticket_track_id
        unique (track_id)
);

create index idx_ticket_entity
    on dolibardev.llx_ticket (entity);

create index idx_ticket_fk_project
    on dolibardev.llx_ticket (fk_project);

create index idx_ticket_fk_soc
    on dolibardev.llx_ticket (fk_soc);

create index idx_ticket_fk_statut
    on dolibardev.llx_ticket (fk_statut);

create index idx_ticket_fk_user_assign
    on dolibardev.llx_ticket (fk_user_assign);

