create table llx_subscription
(
    rowid         int auto_increment
        primary key,
    tms           timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    datec         datetime                            null,
    fk_adherent   int                                 null,
    fk_type       int                                 null,
    dateadh       datetime                            null,
    datef         datetime                            null,
    subscription  double(24, 8)                       null,
    fk_bank       int                                 null,
    fk_user_creat int                                 null,
    fk_user_valid int                                 null,
    note          text                                null,
    constraint uk_subscription
        unique (fk_adherent, dateadh)
)
    engine = InnoDB;

