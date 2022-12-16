create table dolibardev.llx_payment_loan
(
    rowid            int auto_increment
        primary key,
    fk_loan          int                                   null,
    datec            datetime                              null,
    tms              timestamp default current_timestamp() not null on update current_timestamp(),
    datep            datetime                              null,
    amount_capital   double(24, 8)                         null,
    amount_insurance double(24, 8)                         null,
    amount_interest  double(24, 8)                         null,
    fk_typepayment   int                                   not null,
    num_payment      varchar(50)                           null,
    note_private     text                                  null,
    note_public      text                                  null,
    fk_bank          int                                   not null,
    fk_user_creat    int                                   null,
    fk_user_modif    int                                   null
)
    charset = latin1;

