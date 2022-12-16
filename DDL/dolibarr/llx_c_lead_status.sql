create table llx_c_lead_status
(
    rowid    int auto_increment
        primary key,
    code     varchar(10)       null,
    label    varchar(128)      null,
    position int               null,
    percent  double(5, 2)      null,
    active   tinyint default 1 not null,
    constraint uk_c_lead_status_code
        unique (code)
)
    engine = InnoDB;

