create table dolibardev.llx_notify_def
(
    rowid      int auto_increment
        primary key,
    tms        timestamp   default current_timestamp() not null on update current_timestamp(),
    datec      date                                    null,
    fk_action  int                                     not null,
    fk_soc     int                                     null,
    fk_contact int                                     null,
    fk_user    int                                     null,
    type       varchar(16) default 'email'             null
)
    charset = latin1;

