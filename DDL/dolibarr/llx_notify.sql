create table llx_notify
(
    rowid       int auto_increment
        primary key,
    tms         timestamp   default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    daten       datetime                              null,
    fk_action   int                                   not null,
    fk_soc      int                                   null,
    fk_contact  int                                   null,
    fk_user     int                                   null,
    type        varchar(16) default 'email'           null,
    type_target varchar(16)                           null,
    objet_type  varchar(24)                           not null,
    objet_id    int                                   not null,
    email       varchar(255)                          null
)
    engine = InnoDB;

