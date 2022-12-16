create table llx_holiday_config
(
    rowid int auto_increment
        primary key,
    name  varchar(128) not null,
    value text         null,
    constraint idx_holiday_config
        unique (name)
)
    engine = InnoDB;

