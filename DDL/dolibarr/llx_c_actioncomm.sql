create table llx_c_actioncomm
(
    id       int                          not null
        primary key,
    code     varchar(50)                  not null,
    type     varchar(50) default 'system' not null,
    libelle  varchar(128)                 not null,
    module   varchar(50)                  null,
    active   tinyint     default 1        not null,
    todo     tinyint                      null,
    color    varchar(9)                   null,
    picto    varchar(48)                  null,
    position int         default 0        not null,
    constraint uk_c_actioncomm
        unique (code)
)
    engine = InnoDB;

