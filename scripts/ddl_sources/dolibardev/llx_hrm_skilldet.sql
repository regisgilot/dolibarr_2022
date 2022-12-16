create table dolibardev.llx_hrm_skilldet
(
    rowid         int auto_increment
        primary key,
    description   text null,
    fk_user_creat int  not null,
    fk_user_modif int  null,
    fk_skill      int  not null,
    rankorder     int  null,
    constraint llx_hrm_skilldet_fk_user_creat
        foreign key (fk_user_creat) references dolibardev.llx_user (rowid)
);

create index idx_hrm_skilldet_rowid
    on dolibardev.llx_hrm_skilldet (rowid);

