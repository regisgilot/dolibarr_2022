create table llx_prelevement_bons
(
    rowid          int auto_increment
        primary key,
    type           varchar(16)   default 'debit-order' null,
    ref            varchar(12)                         null,
    entity         int           default 1             not null,
    datec          datetime                            null,
    amount         double(24, 8) default 0.00000000    null,
    statut         smallint      default 0             null,
    credite        smallint      default 0             null,
    note           text                                null,
    date_trans     datetime                            null,
    method_trans   smallint                            null,
    fk_user_trans  int                                 null,
    date_credit    datetime                            null,
    fk_user_credit int                                 null,
    constraint uk_prelevement_bons_ref
        unique (ref, entity)
)
    engine = InnoDB;

