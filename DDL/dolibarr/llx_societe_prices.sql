create table llx_societe_prices
(
    rowid          int auto_increment
        primary key,
    fk_soc         int       default 0                 null,
    tms            timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    datec          datetime                            null,
    fk_user_author int                                 null,
    price_level    tinyint   default 1                 null
)
    engine = InnoDB;

