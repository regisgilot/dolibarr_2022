create table llx_usergroup
(
    rowid     int auto_increment
        primary key,
    nom       varchar(180)                        not null,
    entity    int       default 1                 not null,
    datec     datetime                            null,
    tms       timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    note      text                                null,
    model_pdf varchar(255)                        null,
    constraint uk_usergroup_name
        unique (nom, entity)
)
    engine = InnoDB;

