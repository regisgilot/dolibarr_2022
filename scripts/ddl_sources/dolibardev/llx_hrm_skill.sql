create table dolibardev.llx_hrm_skill
(
    rowid           int auto_increment
        primary key,
    label           varchar(255)                          null,
    description     text                                  null,
    date_creation   datetime                              not null,
    tms             timestamp default current_timestamp() not null on update current_timestamp(),
    fk_user_creat   int                                   not null,
    fk_user_modif   int                                   null,
    required_level  int                                   not null,
    date_validite   int                                   not null,
    temps_theorique double(24, 8)                         not null,
    skill_type      int                                   not null,
    note_public     text                                  null,
    note_private    text                                  null,
    constraint llx_hrm_skill_fk_user_creat
        foreign key (fk_user_creat) references dolibardev.llx_user (rowid)
);

create index idx_hrm_skill_rowid
    on dolibardev.llx_hrm_skill (rowid);

create index idx_hrm_skill_skill_type
    on dolibardev.llx_hrm_skill (skill_type);

