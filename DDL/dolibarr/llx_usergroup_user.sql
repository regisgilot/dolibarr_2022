create table llx_usergroup_user
(
    rowid        int auto_increment
        primary key,
    entity       int default 1 not null,
    fk_user      int           not null,
    fk_usergroup int           not null,
    constraint uk_usergroup_user
        unique (entity, fk_user, fk_usergroup),
    constraint fk_usergroup_user_fk_user
        foreign key (fk_user) references llx_user (rowid),
    constraint fk_usergroup_user_fk_usergroup
        foreign key (fk_usergroup) references llx_usergroup (rowid)
)
    engine = InnoDB;

