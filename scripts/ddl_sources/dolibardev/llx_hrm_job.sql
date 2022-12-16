create table dolibardev.llx_hrm_job
(
    rowid         int auto_increment
        primary key,
    label         varchar(255)                          not null,
    description   text                                  null,
    date_creation datetime                              not null,
    tms           timestamp default current_timestamp() not null on update current_timestamp(),
    deplacement   varchar(255)                          null,
    note_public   text                                  null,
    note_private  text                                  null,
    fk_user_creat int                                   null,
    fk_user_modif int                                   null
);

create index idx_hrm_job_label
    on dolibardev.llx_hrm_job (label);

create index idx_hrm_job_rowid
    on dolibardev.llx_hrm_job (rowid);

