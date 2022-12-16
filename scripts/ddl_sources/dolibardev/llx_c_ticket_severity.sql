create table dolibardev.llx_c_ticket_severity
(
    rowid       int auto_increment
        primary key,
    entity      int default 1 null,
    code        varchar(32)   not null,
    pos         varchar(32)   not null,
    label       varchar(128)  not null,
    color       varchar(10)   null,
    active      int default 1 null,
    use_default int default 1 null,
    description varchar(255)  null,
    constraint uk_code
        unique (code, entity)
);

