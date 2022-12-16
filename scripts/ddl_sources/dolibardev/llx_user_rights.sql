create table dolibardev.llx_user_rights
(
    rowid   int auto_increment
        primary key,
    fk_user int           not null,
    fk_id   int           not null,
    entity  int default 1 not null,
    constraint uk_user_rights
        unique (entity, fk_user, fk_id),
    constraint fk_user_rights_fk_user_user
        foreign key (fk_user) references dolibardev.llx_user (rowid)
)
    charset = latin1;

