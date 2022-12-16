create table llx_bordereau_cheque
(
    rowid           int auto_increment
        primary key,
    ref             varchar(30)                         not null,
    ref_ext         varchar(255)                        null,
    datec           datetime                            not null,
    date_bordereau  date                                null,
    amount          double(24, 8)                       not null,
    nbcheque        smallint                            not null,
    fk_bank_account int                                 null,
    fk_user_author  int                                 null,
    statut          smallint  default 0                 not null,
    tms             timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    note            text                                null,
    entity          int       default 1                 not null,
    constraint uk_bordereau_cheque
        unique (ref, entity)
)
    engine = InnoDB;

