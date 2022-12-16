create table llx_oauth_state
(
    rowid       int auto_increment
        primary key,
    service     varchar(36)   null,
    state       varchar(128)  null,
    fk_user     int           null,
    fk_adherent int           null,
    entity      int default 1 null
)
    engine = InnoDB;

