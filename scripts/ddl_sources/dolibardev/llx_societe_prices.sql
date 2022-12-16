create table dolibardev.llx_societe_prices
(
    rowid          int auto_increment
        primary key,
    fk_soc         int       default 0                   null,
    tms            timestamp default current_timestamp() not null on update current_timestamp(),
    datec          datetime                              null,
    fk_user_author int                                   null,
    price_level    tinyint   default 1                   null
)
    charset = latin1;

