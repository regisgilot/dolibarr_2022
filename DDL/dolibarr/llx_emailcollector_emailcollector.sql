create table llx_emailcollector_emailcollector
(
    rowid              int auto_increment
        primary key,
    entity             int         default 1                 not null,
    ref                varchar(128)                          not null,
    label              varchar(255)                          null,
    description        text                                  null,
    host               varchar(255)                          null,
    hostcharset        varchar(16) default 'UTF-8'           null,
    login              varchar(128)                          null,
    password           varchar(128)                          null,
    source_directory   varchar(255)                          not null,
    target_directory   varchar(255)                          null,
    maxemailpercollect int         default 100               null,
    datelastresult     datetime                              null,
    codelastresult     varchar(16)                           null,
    lastresult         varchar(255)                          null,
    datelastok         datetime                              null,
    note_public        text                                  null,
    note_private       text                                  null,
    date_creation      datetime                              not null,
    tms                timestamp   default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_user_creat      int                                   not null,
    fk_user_modif      int                                   null,
    position           int         default 0                 not null,
    import_key         varchar(14)                           null,
    status             int                                   not null,
    constraint uk_emailcollector_emailcollector_ref
        unique (ref, entity)
)
    engine = InnoDB;

create index idx_emailcollector_entity
    on llx_emailcollector_emailcollector (entity);

create index idx_emailcollector_status
    on llx_emailcollector_emailcollector (status);

