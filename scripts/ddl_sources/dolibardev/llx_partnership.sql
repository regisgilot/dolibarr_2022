create table dolibardev.llx_partnership
(
    rowid                      int auto_increment
        primary key,
    ref                        varchar(128) default '(PROV)'            not null,
    status                     smallint     default 0                   not null,
    fk_soc                     int                                      null,
    fk_member                  int                                      null,
    date_partnership_start     date                                     not null,
    date_partnership_end       date                                     null,
    entity                     int          default 1                   not null,
    reason_decline_or_cancel   text                                     null,
    date_creation              datetime                                 not null,
    fk_user_creat              int                                      null,
    tms                        timestamp    default current_timestamp() not null on update current_timestamp(),
    fk_user_modif              int                                      null,
    note_private               text                                     null,
    note_public                text                                     null,
    last_main_doc              varchar(255)                             null,
    count_last_url_check_error int          default 0                   null,
    last_check_backlink        datetime                                 null,
    import_key                 varchar(14)                              null,
    model_pdf                  varchar(255)                             null,
    fk_type                    int          default 0                   not null,
    url_to_check               varchar(255)                             null,
    ip                         varchar(250)                             null,
    constraint uk_fk_type_fk_member
        unique (fk_type, fk_member, date_partnership_start),
    constraint uk_fk_type_fk_soc
        unique (fk_type, fk_soc, date_partnership_start),
    constraint llx_partnership_fk_user_creat
        foreign key (fk_user_creat) references dolibardev.llx_user (rowid)
);

create index idx_partnership_fk_member
    on dolibardev.llx_partnership (fk_member);

create index idx_partnership_fk_soc
    on dolibardev.llx_partnership (fk_soc);

create index idx_partnership_ref
    on dolibardev.llx_partnership (ref);

create index idx_partnership_rowid
    on dolibardev.llx_partnership (rowid);

create index idx_partnership_status
    on dolibardev.llx_partnership (status);

