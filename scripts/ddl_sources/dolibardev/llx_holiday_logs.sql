create table dolibardev.llx_holiday_logs
(
    rowid          int auto_increment
        primary key,
    date_action    datetime     not null,
    fk_user_action int          not null,
    fk_user_update int          not null,
    fk_type        int          not null,
    type_action    varchar(255) not null,
    prev_solde     varchar(255) not null,
    new_solde      varchar(255) not null
)
    charset = latin1;

