create table llx_c_revenuestamp
(
    rowid                 int auto_increment
        primary key,
    fk_pays               int                         not null,
    taux                  double                      not null,
    revenuestamp_type     varchar(16) default 'fixed' not null,
    note                  varchar(128)                null,
    active                tinyint     default 1       not null,
    accountancy_code_sell varchar(32)                 null,
    accountancy_code_buy  varchar(32)                 null
)
    engine = InnoDB;

