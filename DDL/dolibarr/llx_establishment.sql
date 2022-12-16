create table llx_establishment
(
    rowid          int auto_increment
        primary key,
    entity         int       default 1                 not null,
    label          varchar(255)                        null,
    ref            varchar(30)                         null,
    name           varchar(128)                        null,
    address        varchar(255)                        null,
    zip            varchar(25)                         null,
    town           varchar(50)                         null,
    fk_state       int       default 0                 null,
    fk_country     int       default 0                 null,
    profid1        varchar(20)                         null,
    profid2        varchar(20)                         null,
    profid3        varchar(20)                         null,
    phone          varchar(20)                         null,
    fk_user_author int                                 not null,
    fk_user_mod    int                                 null,
    datec          datetime                            not null,
    tms            timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    status         tinyint   default 1                 null
)
    engine = InnoDB;

