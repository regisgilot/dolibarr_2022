create table dolibardev.llx_rights_def
(
    id              int                                   not null,
    libelle         varchar(255)                          null,
    module          varchar(64)                           null,
    entity          int       default 1                   not null,
    perms           varchar(50)                           null,
    subperms        varchar(50)                           null,
    type            varchar(1)                            null,
    bydefault       tinyint   default 0                   null,
    module_position int       default 0                   not null,
    family_position int       default 0                   not null,
    tms             timestamp default current_timestamp() not null on update current_timestamp(),
    primary key (id, entity)
)
    charset = latin1;

