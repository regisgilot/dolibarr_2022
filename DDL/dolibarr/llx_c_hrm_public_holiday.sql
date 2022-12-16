create table llx_c_hrm_public_holiday
(
    id             int auto_increment
        primary key,
    entity         int         default 0  not null,
    fk_country     int                    null,
    fk_departement int                    null,
    code           varchar(62)            null,
    dayrule        varchar(64) default '' null,
    day            int                    null,
    month          int                    null,
    year           int                    null,
    active         int         default 1  null,
    import_key     varchar(14)            null,
    constraint uk_c_hrm_public_holiday
        unique (entity, code),
    constraint uk_c_hrm_public_holiday2
        unique (entity, fk_country, dayrule, day, month, year)
)
    engine = InnoDB;

