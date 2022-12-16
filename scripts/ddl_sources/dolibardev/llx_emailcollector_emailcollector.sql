create table dolibardev.llx_emailcollector_emailcollector
(
    rowid              int auto_increment
        primary key,
    entity             int         default 1                   not null,
    ref                varchar(128)                            not null,
    label              varchar(255)                            null,
    description        text                                    null,
    host               varchar(255)                            null,
    login              varchar(128)                            null,
    password           varchar(128)                            null,
    source_directory   varchar(255)                            not null,
    target_directory   varchar(255)                            null,
    datelastresult     datetime                                null,
    codelastresult     varchar(16)                             null,
    lastresult         text                                    null,
    note_public        text                                    null,
    note_private       text                                    null,
    date_creation      datetime                                not null,
    tms                timestamp   default current_timestamp() not null on update current_timestamp(),
    fk_user_creat      int                                     not null,
    fk_user_modif      int                                     null,
    import_key         varchar(14)                             null,
    status             int                                     not null,
    datelastok         datetime                                null,
    maxemailpercollect int         default 100                 null,
    hostcharset        varchar(16) default 'UTF-8'             null,
    position           int         default 0                   not null,
    port               varchar(10) default '993'               null,
    acces_type         int         default 0                   null,
    oauth_service      varchar(128)                            null,
    constraint uk_emailcollector_emailcollector_ref
        unique (ref, entity)
);

create index idx_emailcollector_entity
    on dolibardev.llx_emailcollector_emailcollector (entity);

create index idx_emailcollector_status
    on dolibardev.llx_emailcollector_emailcollector (status);

