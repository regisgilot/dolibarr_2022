create table llx_cronjob
(
    rowid          int auto_increment
        primary key,
    tms            timestamp    default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    datec          datetime                               null,
    jobtype        varchar(10)                            not null,
    label          varchar(255)                           not null,
    command        varchar(255)                           null,
    classesname    varchar(255)                           null,
    objectname     varchar(255)                           null,
    methodename    varchar(255)                           null,
    params         text                                   null,
    md5params      varchar(32)                            null,
    module_name    varchar(255)                           null,
    priority       int          default 0                 null,
    datelastrun    datetime                               null,
    datenextrun    datetime                               null,
    datestart      datetime                               null,
    dateend        datetime                               null,
    datelastresult datetime                               null,
    lastresult     text                                   null,
    lastoutput     text                                   null,
    unitfrequency  varchar(255) default '3600'            not null,
    frequency      int          default 0                 not null,
    maxrun         int          default 0                 not null,
    nbrun          int                                    null,
    autodelete     int          default 0                 null,
    status         int          default 1                 not null,
    processing     int          default 0                 not null,
    test           varchar(255) default '1'               null,
    fk_user_author int                                    null,
    fk_user_mod    int                                    null,
    fk_mailing     int                                    null,
    note           text                                   null,
    libname        varchar(255)                           null,
    email_alert    varchar(128)                           null,
    entity         int          default 0                 null,
    constraint uk_cronjob
        unique (label, entity)
)
    engine = InnoDB;

create index idx_cronjob_dateend
    on llx_cronjob (dateend);

create index idx_cronjob_datelastrun
    on llx_cronjob (datelastrun);

create index idx_cronjob_datenextrun
    on llx_cronjob (datenextrun);

create index idx_cronjob_datestart
    on llx_cronjob (datestart);

create index idx_cronjob_status
    on llx_cronjob (status);

