create table dolibardev.llx_recruitment_recruitmentcandidature
(
    rowid                     int auto_increment
        primary key,
    entity                    int          default 1                   not null,
    fk_recruitmentjobposition int                                      null,
    ref                       varchar(128) default '(PROV)'            not null,
    description               text                                     null,
    note_public               text                                     null,
    note_private              text                                     null,
    date_creation             datetime                                 not null,
    tms                       timestamp    default current_timestamp() not null on update current_timestamp(),
    fk_user_creat             int                                      not null,
    fk_user_modif             int                                      null,
    import_key                varchar(14)                              null,
    model_pdf                 varchar(255)                             null,
    status                    smallint                                 not null,
    firstname                 varchar(128)                             null,
    lastname                  varchar(128)                             null,
    email                     varchar(255)                             null,
    phone                     varchar(64)                              null,
    date_birth                date                                     null,
    remuneration_requested    int                                      null,
    remuneration_proposed     int                                      null,
    email_msgid               varchar(175)                             null,
    email_date                datetime                                 null,
    fk_recruitment_origin     int                                      null,
    constraint uk_recruitmentcandidature_email_msgid
        unique (email_msgid),
    constraint llx_recruitment_recruitmentcandidature_fk_user_creat
        foreign key (fk_user_creat) references dolibardev.llx_user (rowid)
);

create index idx_recruitment_recruitmentcandidature_ref
    on dolibardev.llx_recruitment_recruitmentcandidature (ref);

create index idx_recruitment_recruitmentcandidature_rowid
    on dolibardev.llx_recruitment_recruitmentcandidature (rowid);

create index idx_recruitment_recruitmentcandidature_status
    on dolibardev.llx_recruitment_recruitmentcandidature (status);

