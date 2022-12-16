create table llx_c_hrm_department
(
    rowid  int               not null
        primary key,
    pos    tinyint default 0 not null,
    code   varchar(16)       not null,
    label  varchar(128)      null,
    active tinyint default 1 not null
)
    engine = InnoDB;

