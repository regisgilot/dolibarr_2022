create table llx_multicurrency_rate
(
    rowid            int auto_increment
        primary key,
    date_sync        datetime         null,
    rate             double default 0 not null,
    fk_multicurrency int              not null,
    entity           int    default 1 null
)
    engine = InnoDB;

