create table llx_c_ticket_category
(
    rowid          int auto_increment
        primary key,
    entity         int default 1 null,
    code           varchar(32)   not null,
    label          varchar(128)  not null,
    public         int default 0 null,
    use_default    int default 1 null,
    fk_parent      int default 0 not null,
    force_severity varchar(32)   null,
    description    varchar(255)  null,
    pos            int default 0 not null,
    active         int default 1 null,
    constraint uk_code
        unique (code, entity)
)
    engine = InnoDB;

