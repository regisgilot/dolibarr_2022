create table llx_tva
(
    rowid          int auto_increment
        primary key,
    tms            timestamp     default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    datec          datetime                                null,
    datep          date                                    null,
    datev          date                                    null,
    amount         double(24, 8) default 0.00000000        not null,
    fk_typepayment int                                     null,
    num_payment    varchar(50)                             null,
    label          varchar(255)                            null,
    entity         int           default 1                 not null,
    note           text                                    null,
    paye           smallint      default 0                 not null,
    fk_account     int                                     null,
    fk_user_creat  int                                     null,
    fk_user_modif  int                                     null,
    import_key     varchar(14)                             null
)
    engine = InnoDB;

