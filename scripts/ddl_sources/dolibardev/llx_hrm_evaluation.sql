create table dolibardev.llx_hrm_evaluation
(
    rowid         int auto_increment
        primary key,
    ref           varchar(128) default '(PROV)'            not null,
    label         varchar(255)                             null,
    description   text                                     null,
    note_public   text                                     null,
    note_private  text                                     null,
    date_creation datetime                                 not null,
    tms           timestamp    default current_timestamp() not null on update current_timestamp(),
    fk_user_creat int                                      not null,
    fk_user_modif int                                      null,
    import_key    varchar(14)                              null,
    status        smallint                                 not null,
    date_eval     date                                     null,
    fk_user       int                                      not null,
    fk_job        int                                      not null,
    constraint llx_hrm_evaluation_fk_user_creat
        foreign key (fk_user_creat) references dolibardev.llx_user (rowid)
);

create index idx_hrm_evaluation_ref
    on dolibardev.llx_hrm_evaluation (ref);

create index idx_hrm_evaluation_rowid
    on dolibardev.llx_hrm_evaluation (rowid);

create index idx_hrm_evaluation_status
    on dolibardev.llx_hrm_evaluation (status);

