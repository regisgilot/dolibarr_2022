create table llx_actioncomm
(
    id               int auto_increment
        primary key,
    ref              varchar(30)                           not null,
    ref_ext          varchar(255)                          null,
    entity           int         default 1                 not null,
    datep            datetime                              null,
    datep2           datetime                              null,
    fk_action        int                                   null,
    code             varchar(50)                           null,
    datec            datetime                              null,
    tms              timestamp   default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_user_author   int                                   null,
    fk_user_mod      int                                   null,
    fk_project       int                                   null,
    fk_soc           int                                   null,
    fk_contact       int                                   null,
    fk_parent        int         default 0                 not null,
    fk_user_action   int                                   null,
    fk_user_done     int                                   null,
    transparency     int                                   null,
    priority         smallint                              null,
    visibility       varchar(12) default 'default'         null,
    fulldayevent     smallint    default 0                 not null,
    percent          smallint    default 0                 not null,
    location         varchar(128)                          null,
    durationp        double                                null,
    label            varchar(255)                          not null,
    note             mediumtext                            null,
    calling_duration int                                   null,
    email_subject    varchar(255)                          null,
    email_msgid      varchar(255)                          null,
    email_from       varchar(255)                          null,
    email_sender     varchar(255)                          null,
    email_to         varchar(255)                          null,
    email_tocc       varchar(255)                          null,
    email_tobcc      varchar(255)                          null,
    errors_to        varchar(255)                          null,
    reply_to         varchar(255)                          null,
    recurid          varchar(128)                          null,
    recurrule        varchar(128)                          null,
    recurdateend     datetime                              null,
    num_vote         int                                   null,
    event_paid       smallint    default 0                 not null,
    status           smallint    default 0                 not null,
    fk_element       int                                   null,
    elementtype      varchar(255)                          null,
    import_key       varchar(14)                           null,
    extraparams      varchar(255)                          null,
    constraint uk_actioncomm_ref
        unique (ref, entity)
)
    engine = InnoDB;

create index idx_actioncomm_code
    on llx_actioncomm (code);

create index idx_actioncomm_datep
    on llx_actioncomm (datep);

create index idx_actioncomm_datep2
    on llx_actioncomm (datep2);

create index idx_actioncomm_fk_contact
    on llx_actioncomm (fk_contact);

create index idx_actioncomm_fk_element
    on llx_actioncomm (fk_element);

create index idx_actioncomm_fk_project
    on llx_actioncomm (fk_project);

create index idx_actioncomm_fk_soc
    on llx_actioncomm (fk_soc);

create index idx_actioncomm_fk_user_action
    on llx_actioncomm (fk_user_action);

create index idx_actioncomm_recurid
    on llx_actioncomm (recurid);

create index idx_actioncomm_ref_ext
    on llx_actioncomm (ref_ext);

