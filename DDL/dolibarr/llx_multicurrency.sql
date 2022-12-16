create table llx_multicurrency
(
    rowid       int auto_increment
        primary key,
    date_create datetime      null,
    code        varchar(255)  null,
    name        varchar(255)  null,
    entity      int default 1 null,
    fk_user     int           null
)
    engine = InnoDB;

