create table dolibardev.llx_bank_account
(
    rowid                  int auto_increment
        primary key,
    datec                  datetime                               null,
    tms                    timestamp default current_timestamp()  not null on update current_timestamp(),
    ref                    varchar(12)                            not null,
    label                  varchar(30)                            not null,
    entity                 int       default 1                    not null,
    fk_user_author         int                                    null,
    fk_user_modif          int                                    null,
    bank                   varchar(60)                            null,
    code_banque            varchar(128)                           null,
    code_guichet           varchar(6)                             null,
    number                 varchar(255)                           null,
    cle_rib                varchar(5)                             null,
    bic                    varchar(11)                            null,
    iban_prefix            varchar(34)                            null,
    country_iban           varchar(2)                             null,
    cle_iban               varchar(2)                             null,
    domiciliation          varchar(255)                           null,
    pti_in_ctti            smallint  default 0                    null,
    state_id               int                                    null,
    fk_pays                int                                    not null,
    proprio                varchar(60)                            null,
    owner_address          varchar(255)                           null,
    courant                smallint  default 0                    not null,
    clos                   smallint  default 0                    not null,
    rappro                 smallint  default 1                    null,
    url                    varchar(128)                           null,
    account_number         varchar(32)                            null,
    accountancy_journal    varchar(20) collate utf8mb3_unicode_ci null,
    currency_code          varchar(3)                             not null,
    min_allowed            int       default 0                    null,
    min_desired            int       default 0                    null,
    comment                text                                   null,
    extraparams            varchar(255)                           null,
    note_public            text                                   null,
    model_pdf              varchar(255)                           null,
    import_key             varchar(14)                            null,
    fk_accountancy_journal int                                    null,
    ics                    varchar(32)                            null,
    ics_transfer           varchar(32)                            null,
    constraint uk_bank_account_label
        unique (label, entity),
    constraint fk_bank_account_accountancy_journal
        foreign key (fk_accountancy_journal) references dolibardev.llx_accounting_journal (rowid)
)
    charset = latin1;

create index idx_fk_accountancy_journal
    on dolibardev.llx_bank_account (fk_accountancy_journal);

