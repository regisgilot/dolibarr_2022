create table dolibardev.llx_printer_ipp
(
    rowid            int auto_increment
        primary key,
    tms              timestamp default current_timestamp() not null on update current_timestamp(),
    datec            datetime                              null,
    printer_name     text                                  not null,
    printer_location text                                  not null,
    printer_uri      varchar(255)                          not null,
    copy             int       default 1                   not null,
    module           varchar(16)                           not null,
    login            varchar(32)                           not null
)
    charset = latin1;

