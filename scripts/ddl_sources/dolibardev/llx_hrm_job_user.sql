create table dolibardev.llx_hrm_job_user
(
    rowid         int auto_increment
        primary key,
    description   text                                  null,
    date_creation datetime                              not null,
    tms           timestamp default current_timestamp() not null on update current_timestamp(),
    fk_contrat    int                                   null,
    fk_user       int                                   null,
    fk_job        int                                   not null,
    date_start    date                                  null,
    date_end      date                                  null,
    abort_comment varchar(255)                          null,
    note_public   text                                  null,
    note_private  text                                  null,
    fk_user_creat int                                   null,
    fk_user_modif int                                   null
);

create index idx_hrm_job_user_rowid
    on dolibardev.llx_hrm_job_user (rowid);

