create table llx_export_compta
(
    rowid       int auto_increment
        primary key,
    ref         varchar(12) not null,
    date_export datetime    not null,
    fk_user     int         not null,
    note        text        null
)
    engine = InnoDB;

