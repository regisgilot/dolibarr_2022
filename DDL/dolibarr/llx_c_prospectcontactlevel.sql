create table llx_c_prospectcontactlevel
(
    code      varchar(12)        not null
        primary key,
    label     varchar(128)       null,
    sortorder smallint           null,
    active    smallint default 1 not null,
    module    varchar(32)        null
)
    engine = InnoDB;

