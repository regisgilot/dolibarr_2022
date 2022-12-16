create table llx_paiement
(
    rowid                int auto_increment
        primary key,
    ref                  varchar(30)                             null,
    ref_ext              varchar(255)                            null,
    entity               int           default 1                 not null,
    datec                datetime                                null,
    tms                  timestamp     default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    datep                datetime                                null,
    amount               double(24, 8) default 0.00000000        null,
    multicurrency_amount double(24, 8) default 0.00000000        null,
    fk_paiement          int                                     not null,
    num_paiement         varchar(50)                             null,
    note                 text                                    null,
    ext_payment_id       varchar(255)                            null,
    ext_payment_site     varchar(128)                            null,
    fk_bank              int           default 0                 not null,
    fk_user_creat        int                                     null,
    fk_user_modif        int                                     null,
    statut               smallint      default 0                 not null,
    fk_export_compta     int           default 0                 not null,
    pos_change           double(24, 8) default 0.00000000        null
)
    engine = InnoDB;

