create table dolibardev.llx_intracommreport
(
    rowid            int auto_increment
        primary key,
    ref              varchar(30)                           not null,
    entity           int       default 1                   not null,
    type_declaration varchar(32)                           null,
    periods          varchar(32)                           null,
    mode             varchar(32)                           null,
    content_xml      text                                  null,
    type_export      varchar(10)                           null,
    datec            datetime                              null,
    tms              timestamp default current_timestamp() not null on update current_timestamp()
);

