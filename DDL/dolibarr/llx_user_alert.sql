create table llx_user_alert
(
    rowid      int auto_increment
        primary key,
    type       int null,
    fk_contact int null,
    fk_user    int null
)
    engine = InnoDB;

