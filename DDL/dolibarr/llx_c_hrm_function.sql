create table llx_c_hrm_function
(
    rowid   int               not null
        primary key,
    pos     tinyint default 0 not null,
    code    varchar(16)       not null,
    label   varchar(128)      null,
    c_level tinyint default 0 not null,
    active  tinyint default 1 not null
)
    engine = InnoDB;

