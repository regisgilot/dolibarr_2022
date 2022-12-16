create table llx_ecm_directories
(
    rowid        int auto_increment
        primary key,
    label        varchar(64)                         not null,
    entity       int       default 1                 not null,
    fk_parent    int                                 null,
    description  varchar(255)                        not null,
    cachenbofdoc int       default 0                 not null,
    fullpath     varchar(750)                        null,
    extraparams  varchar(255)                        null,
    date_c       datetime                            null,
    tms          timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_user_c    int                                 null,
    fk_user_m    int                                 null,
    note_private text                                null,
    note_public  text                                null,
    acl          text                                null,
    constraint uk_ecm_directories
        unique (label, fk_parent, entity),
    constraint fk_ecm_directories_fk_user_c
        foreign key (fk_user_c) references llx_user (rowid),
    constraint fk_ecm_directories_fk_user_m
        foreign key (fk_user_m) references llx_user (rowid)
)
    engine = InnoDB;

create index idx_ecm_directories_fk_user_c
    on llx_ecm_directories (fk_user_c);

create index idx_ecm_directories_fk_user_m
    on llx_ecm_directories (fk_user_m);

