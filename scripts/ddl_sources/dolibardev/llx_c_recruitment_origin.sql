create table dolibardev.llx_c_recruitment_origin
(
    rowid  int auto_increment
        primary key,
    code   varchar(32)       not null,
    label  varchar(128)      null,
    active tinyint default 1 not null
);

