create table dolibardev.llx_hrm_skillrank
(
    rowid         int auto_increment
        primary key,
    fk_skill      int                                   not null,
    rankorder     int                                   not null,
    fk_object     int                                   not null,
    date_creation datetime                              not null,
    tms           timestamp default current_timestamp() not null on update current_timestamp(),
    fk_user_creat int                                   not null,
    fk_user_modif int                                   null,
    objecttype    varchar(128)                          not null,
    constraint llx_hrm_skillrank_fk_user_creat
        foreign key (fk_user_creat) references dolibardev.llx_user (rowid)
);

create index idx_hrm_skillrank_fk_skill
    on dolibardev.llx_hrm_skillrank (fk_skill);

create index idx_hrm_skillrank_rowid
    on dolibardev.llx_hrm_skillrank (rowid);

