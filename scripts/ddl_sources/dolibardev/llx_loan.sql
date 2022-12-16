create table dolibardev.llx_loan
(
    rowid                         int auto_increment
        primary key,
    entity                        int           default 1                   not null,
    datec                         datetime                                  null,
    tms                           timestamp     default current_timestamp() not null on update current_timestamp(),
    label                         varchar(80)                               not null,
    fk_bank                       int                                       null,
    capital                       double(24, 8)                             null,
    datestart                     date                                      null,
    dateend                       date                                      null,
    nbterm                        double                                    null,
    rate                          double                                    not null,
    note_private                  text                                      null,
    note_public                   text                                      null,
    capital_position              double(24, 8)                             null,
    date_position                 date                                      null,
    paid                          smallint      default 0                   not null,
    accountancy_account_capital   varchar(32)                               null,
    accountancy_account_insurance varchar(32)                               null,
    accountancy_account_interest  varchar(32)                               null,
    fk_user_author                int                                       null,
    fk_user_modif                 int                                       null,
    active                        tinyint       default 1                   not null,
    fk_projet                     int                                       null,
    insurance_amount              double(24, 8) default 0.00000000          null
)
    charset = latin1;

