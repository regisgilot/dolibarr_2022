create table llx_user_rights
(
    rowid   int auto_increment
        primary key,
    entity  int default 1 not null,
    fk_user int           not null,
    fk_id   int           not null,
    constraint uk_user_rights
        unique (entity, fk_user, fk_id),
    constraint fk_user_rights_fk_user_user
        foreign key (fk_user) references llx_user (rowid)
)
    engine = InnoDB;

