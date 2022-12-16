create table dolibardev.llx_recruitment_recruitmentjobposition
(
    rowid                  int auto_increment
        primary key,
    ref                    varchar(128) default '(PROV)'            not null,
    entity                 int          default 1                   not null,
    label                  varchar(255)                             not null,
    qty                    int          default 1                   not null,
    fk_soc                 int                                      null,
    fk_project             int                                      null,
    fk_user_recruiter      int                                      null,
    fk_user_supervisor     int                                      null,
    fk_establishment       int                                      null,
    date_planned           date                                     null,
    remuneration_suggested varchar(255)                             null,
    description            text                                     null,
    note_public            text                                     null,
    note_private           text                                     null,
    date_creation          datetime                                 not null,
    tms                    timestamp    default current_timestamp() not null on update current_timestamp(),
    fk_user_creat          int                                      not null,
    fk_user_modif          int                                      null,
    last_main_doc          varchar(255)                             null,
    import_key             varchar(14)                              null,
    model_pdf              varchar(255)                             null,
    status                 smallint                                 not null,
    email_recruiter        varchar(255)                             null,
    constraint llx_recruitment_recruitmentjobposition_fk_establishment
        foreign key (fk_establishment) references dolibardev.llx_establishment (rowid),
    constraint llx_recruitment_recruitmentjobposition_fk_user_creat
        foreign key (fk_user_creat) references dolibardev.llx_user (rowid),
    constraint llx_recruitment_recruitmentjobposition_fk_user_recruiter
        foreign key (fk_user_recruiter) references dolibardev.llx_user (rowid),
    constraint llx_recruitment_recruitmentjobposition_fk_user_supervisor
        foreign key (fk_user_supervisor) references dolibardev.llx_user (rowid)
);

create index idx_recruitment_recruitmentjobposition_fk_project
    on dolibardev.llx_recruitment_recruitmentjobposition (fk_project);

create index idx_recruitment_recruitmentjobposition_fk_soc
    on dolibardev.llx_recruitment_recruitmentjobposition (fk_soc);

create index idx_recruitment_recruitmentjobposition_ref
    on dolibardev.llx_recruitment_recruitmentjobposition (ref);

create index idx_recruitment_recruitmentjobposition_rowid
    on dolibardev.llx_recruitment_recruitmentjobposition (rowid);

create index idx_recruitment_recruitmentjobposition_status
    on dolibardev.llx_recruitment_recruitmentjobposition (status);

