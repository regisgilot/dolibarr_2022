create table llx_paiementfourn
(
    rowid                int auto_increment
        primary key,
    ref                  varchar(30)                             null,
    entity               int           default 1                 null,
    tms                  timestamp     default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    datec                datetime                                null,
    datep                datetime                                null,
    amount               double(24, 8) default 0.00000000        null,
    multicurrency_amount double(24, 8) default 0.00000000        null,
    fk_user_author       int                                     null,
    fk_user_modif        int                                     null,
    fk_paiement          int                                     not null,
    num_paiement         varchar(50)                             null,
    note                 text                                    null,
    fk_bank              int                                     not null,
    statut               smallint      default 0                 not null,
    model_pdf            varchar(255)                            null
)
    engine = InnoDB;

