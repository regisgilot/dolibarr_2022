create table dolibardev.llx_payment_various
(
    rowid             int auto_increment
        primary key,
    ref               varchar(30)                               null,
    tms               timestamp     default current_timestamp() not null on update current_timestamp(),
    datec             datetime                                  null,
    datep             date                                      null,
    datev             date                                      null,
    sens              smallint      default 0                   not null,
    amount            double(24, 8) default 0.00000000          not null,
    fk_typepayment    int                                       not null,
    num_payment       varchar(50)                               null,
    label             varchar(255)                              null,
    accountancy_code  varchar(32)                               null,
    fk_projet         int                                       null,
    entity            int           default 1                   not null,
    note              text                                      null,
    fk_bank           int                                       null,
    fk_user_author    int                                       null,
    fk_user_modif     int                                       null,
    subledger_account varchar(32)                               null
);

