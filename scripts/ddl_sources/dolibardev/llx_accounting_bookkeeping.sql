create table dolibardev.llx_accounting_bookkeeping
(
    rowid                int auto_increment
        primary key,
    doc_date             date                                   not null,
    doc_type             varchar(30)                            not null,
    doc_ref              varchar(300)                           not null,
    fk_doc               int                                    not null,
    fk_docdet            int                                    not null,
    thirdparty_code      varchar(32)                            null,
    numero_compte        varchar(20) collate utf8mb3_unicode_ci null,
    label_compte         varchar(255)                           null,
    label_operation      varchar(255)                           null,
    debit                double(24, 8)                          null,
    credit               double(24, 8)                          null,
    montant              double(24, 8)                          null,
    sens                 varchar(1)                             null,
    multicurrency_amount double(24, 8)                          null,
    multicurrency_code   varchar(255)                           null,
    lettering_code       varchar(255)                           null,
    date_lettering       datetime                               null,
    fk_user_author       int                                    not null,
    import_key           varchar(14)                            null,
    code_journal         varchar(32)                            null,
    journal_label        varchar(255)                           null,
    piece_num            int                                    not null,
    date_validated       datetime                               null,
    date_export          datetime                               null,
    entity               int       default 1                    not null,
    fk_user_modif        int                                    null,
    date_creation        datetime                               null,
    tms                  timestamp default current_timestamp()  not null on update current_timestamp(),
    subledger_account    varchar(32)                            null,
    subledger_label      varchar(255)                           null,
    extraparams          varchar(255)                           null,
    date_lim_reglement   datetime                               null,
    fk_user              int                                    null
)
    charset = latin1;

create index idx_accounting_bookkeeping_code_journal
    on dolibardev.llx_accounting_bookkeeping (code_journal, entity);

create index idx_accounting_bookkeeping_doc_date
    on dolibardev.llx_accounting_bookkeeping (doc_date);

create index idx_accounting_bookkeeping_fk_doc
    on dolibardev.llx_accounting_bookkeeping (fk_doc);

create index idx_accounting_bookkeeping_fk_docdet
    on dolibardev.llx_accounting_bookkeeping (fk_docdet);

create index idx_accounting_bookkeeping_numero_compte
    on dolibardev.llx_accounting_bookkeeping (numero_compte, entity);

create index idx_accounting_bookkeeping_piece_num
    on dolibardev.llx_accounting_bookkeeping (piece_num, entity);

