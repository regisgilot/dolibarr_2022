create table llx_c_type_contact
(
    rowid    int auto_increment
        primary key,
    element  varchar(30)                   not null,
    source   varchar(8) default 'external' not null,
    code     varchar(32)                   not null,
    libelle  varchar(128)                  not null,
    active   tinyint    default 1          not null,
    module   varchar(32)                   null,
    position int        default 0          not null,
    constraint uk_c_type_contact_id
        unique (element, source, code)
)
    engine = InnoDB;

