create table dolibardev.llx_cronjob
(
    rowid          int auto_increment
        primary key,
    tms            timestamp    default current_timestamp() not null on update current_timestamp(),
    datec          datetime                                 null,
    jobtype        varchar(10)                              not null,
    label          varchar(255)                             not null,
    command        varchar(255)                             null,
    classesname    varchar(255)                             null,
    objectname     varchar(255)                             null,
    methodename    varchar(255)                             null,
    params         text                                     null,
    md5params      varchar(32)                              null,
    module_name    varchar(255)                             null,
    priority       int          default 0                   null,
    datelastrun    datetime                                 null,
    datenextrun    datetime                                 null,
    datestart      datetime                                 null,
    dateend        datetime                                 null,
    datelastresult datetime                                 null,
    lastresult     text                                     null,
    lastoutput     text                                     null,
    unitfrequency  varchar(255) default '3600'              not null,
    frequency      int          default 0                   not null,
    nbrun          int                                      null,
    status         int          default 1                   not null,
    fk_user_author int                                      null,
    fk_user_mod    int                                      null,
    note           text                                     null,
    libname        varchar(255)                             null,
    entity         int          default 0                   null,
    maxrun         int          default 0                   not null,
    autodelete     int          default 0                   null,
    fk_mailing     int                                      null,
    test           varchar(255) default '1'                 null,
    processing     int          default 0                   not null,
    email_alert    varchar(128)                             null,
    pid            int                                      null,
    constraint uk_cronjob
        unique (label, entity)
)
    charset = latin1;

