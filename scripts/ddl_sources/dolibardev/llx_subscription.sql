create table dolibardev.llx_subscription
(
    rowid         int auto_increment
        primary key,
    tms           timestamp default current_timestamp() not null on update current_timestamp(),
    datec         datetime                              null,
    fk_adherent   int                                   null,
    dateadh       datetime                              null,
    datef         datetime                              null,
    subscription  double(24, 8)                         null,
    fk_bank       int                                   null,
    note          text                                  null,
    fk_type       int                                   null,
    fk_user_creat int                                   null,
    fk_user_valid int                                   null,
    constraint uk_cotisation
        unique (fk_adherent, dateadh),
    constraint uk_subscription
        unique (fk_adherent, dateadh)
)
    charset = latin1;

