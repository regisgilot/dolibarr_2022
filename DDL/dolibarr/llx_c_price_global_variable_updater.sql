create table llx_c_price_global_variable_updater
(
    rowid           int auto_increment
        primary key,
    type            int           not null,
    description     text          null,
    parameters      text          null,
    fk_variable     int           not null,
    update_interval int default 0 null,
    next_update     int default 0 null,
    last_status     text          null
)
    engine = InnoDB;

