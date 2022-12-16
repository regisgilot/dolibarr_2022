create table llx_accounting_bookkeeping
(
    rowid                int auto_increment
        primary key,
    entity               int       default 1                 not null,
    piece_num            int                                 not null,
    doc_date             date                                not null,
    doc_type             varchar(30)                         not null,
    doc_ref              varchar(300)                        not null,
    fk_doc               int                                 not null,
    fk_docdet            int                                 not null,
    thirdparty_code      varchar(32)                         null,
    subledger_account    varchar(32)                         null,
    subledger_label      varchar(255)                        null,
    numero_compte        varchar(32)                         not null,
    label_compte         varchar(255)                        not null,
    label_operation      varchar(255)                        null,
    debit                double(24, 8)                       not null,
    credit               double(24, 8)                       not null,
    montant              double(24, 8)                       null,
    sens                 varchar(1)                          null,
    multicurrency_amount double(24, 8)                       null,
    multicurrency_code   varchar(255)                        null,
    lettering_code       varchar(255)                        null,
    date_lettering       datetime                            null,
    date_lim_reglement   datetime                            null,
    fk_user_author       int                                 not null,
    fk_user_modif        int                                 null,
    date_creation        datetime                            null,
    tms                  timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_user              int                                 null,
    code_journal         varchar(32)                         not null,
    journal_label        varchar(255)                        null,
    date_validated       datetime                            null,
    date_export          datetime                            null,
    import_key           varchar(14)                         null,
    extraparams          varchar(255)                        null
)
    engine = InnoDB;

create index idx_accounting_bookkeeping_code_journal
    on llx_accounting_bookkeeping (code_journal, entity);

create index idx_accounting_bookkeeping_doc_date
    on llx_accounting_bookkeeping (doc_date);

create index idx_accounting_bookkeeping_fk_doc
    on llx_accounting_bookkeeping (fk_doc);

create index idx_accounting_bookkeeping_fk_docdet
    on llx_accounting_bookkeeping (fk_docdet);

create index idx_accounting_bookkeeping_numero_compte
    on llx_accounting_bookkeeping (numero_compte, entity);

create index idx_accounting_bookkeeping_piece_num
    on llx_accounting_bookkeeping (piece_num, entity);

