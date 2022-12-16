create table llx_notify_def
(
    rowid      int auto_increment
        primary key,
    tms        timestamp   default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    datec      date                                  null,
    fk_action  int                                   not null,
    fk_soc     int                                   null,
    fk_contact int                                   null,
    fk_user    int                                   null,
    type       varchar(16) default 'email'           null
)
    engine = InnoDB;

