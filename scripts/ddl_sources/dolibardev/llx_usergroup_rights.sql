create table dolibardev.llx_usergroup_rights
(
    rowid        int auto_increment
        primary key,
    entity       int default 1 not null,
    fk_usergroup int           not null,
    fk_id        int           not null,
    constraint uk_usergroup_rights
        unique (entity, fk_usergroup, fk_id),
    constraint fk_usergroup_rights_fk_usergroup
        foreign key (fk_usergroup) references dolibardev.llx_usergroup (rowid)
)
    charset = latin1;

