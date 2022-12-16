create table llx_adherent_type
(
    rowid        int auto_increment
        primary key,
    entity       int        default 1                 not null,
    tms          timestamp  default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    statut       smallint   default 0                 not null,
    libelle      varchar(50)                          not null,
    morphy       varchar(3)                           not null,
    duration     varchar(6)                           null,
    subscription varchar(3) default '1'               not null,
    amount       double(24, 8)                        null,
    vote         varchar(3) default '1'               not null,
    note         text                                 null,
    mail_valid   text                                 null,
    constraint uk_adherent_type_libelle
        unique (libelle, entity)
)
    engine = InnoDB;

