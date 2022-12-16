create table dolibardev.llx_pos_cash_fence
(
    rowid         int auto_increment
        primary key,
    entity        int           default 1                   not null,
    ref           varchar(64)                               null,
    label         varchar(255)                              null,
    opening       double(24, 8) default 0.00000000          null,
    cash          double(24, 8) default 0.00000000          null,
    card          double(24, 8) default 0.00000000          null,
    cheque        double(24, 8) default 0.00000000          null,
    status        int                                       null,
    date_creation datetime                                  not null,
    date_valid    datetime                                  null,
    day_close     int                                       null,
    month_close   int                                       null,
    year_close    int                                       null,
    posmodule     varchar(30)                               null,
    posnumber     varchar(30)                               null,
    fk_user_creat int                                       null,
    fk_user_valid int                                       null,
    tms           timestamp     default current_timestamp() not null on update current_timestamp(),
    import_key    varchar(14)                               null
);

