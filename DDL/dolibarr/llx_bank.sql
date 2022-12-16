create table llx_bank
(
    rowid                int auto_increment
        primary key,
    datec                datetime                                null,
    tms                  timestamp     default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    datev                date                                    null,
    dateo                date                                    null,
    amount               double(24, 8) default 0.00000000        not null,
    amount_main_currency double(24, 8)                           null,
    label                varchar(255)                            null,
    fk_account           int                                     null,
    fk_user_author       int                                     null,
    fk_user_rappro       int                                     null,
    fk_type              varchar(6)                              null,
    num_releve           varchar(50)                             null,
    num_chq              varchar(50)                             null,
    numero_compte        varchar(32)                             null,
    rappro               tinyint       default 0                 null,
    note                 text                                    null,
    fk_bordereau         int           default 0                 null,
    banque               varchar(255)                            null,
    emetteur             varchar(255)                            null,
    author               varchar(40)                             null,
    origin_id            int                                     null,
    origin_type          varchar(64)                             null,
    import_key           varchar(14)                             null
)
    engine = InnoDB;

create index idx_bank_dateo
    on llx_bank (dateo);

create index idx_bank_datev
    on llx_bank (datev);

create index idx_bank_fk_account
    on llx_bank (fk_account);

create index idx_bank_num_releve
    on llx_bank (num_releve);

create index idx_bank_rappro
    on llx_bank (rappro);

