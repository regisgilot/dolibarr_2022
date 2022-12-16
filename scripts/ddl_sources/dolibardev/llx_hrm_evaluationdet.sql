create table dolibardev.llx_hrm_evaluationdet
(
    rowid         int auto_increment
        primary key,
    date_creation datetime                              not null,
    tms           timestamp default current_timestamp() not null on update current_timestamp(),
    fk_user_creat int                                   not null,
    fk_user_modif int                                   null,
    fk_skill      int                                   not null,
    fk_evaluation int                                   not null,
    rankorder     int                                   not null,
    required_rank int                                   not null,
    import_key    varchar(14)                           null,
    constraint llx_hrm_evaluationdet_fk_user_creat
        foreign key (fk_user_creat) references dolibardev.llx_user (rowid)
);

create index idx_hrm_evaluationdet_fk_evaluation
    on dolibardev.llx_hrm_evaluationdet (fk_evaluation);

create index idx_hrm_evaluationdet_fk_skill
    on dolibardev.llx_hrm_evaluationdet (fk_skill);

create index idx_hrm_evaluationdet_rowid
    on dolibardev.llx_hrm_evaluationdet (rowid);

