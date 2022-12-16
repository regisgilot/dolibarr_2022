create table llx_printing
(
    rowid            int auto_increment
        primary key,
    tms              timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    datec            datetime                            null,
    printer_name     text                                not null,
    printer_location text                                not null,
    printer_id       varchar(255)                        not null,
    copy             int       default 1                 not null,
    module           varchar(16)                         not null,
    driver           varchar(16)                         not null,
    userid           int                                 null
)
    engine = InnoDB;

