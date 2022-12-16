create table dolibardev.llx_c_hrm_function
(
    rowid   int                not null
        primary key,
    pos     smallint default 0 not null,
    code    varchar(16)        not null,
    label   varchar(128)       null,
    c_level smallint default 0 not null,
    active  smallint default 1 not null
);

