create table dolibardev.llx_accounting_bookkeeping_tmp
(
    rowid                int auto_increment
        primary key,
    entity               int       default 1                   not null,
    doc_date             date                                  not null,
    doc_type             varchar(30)                           not null,
    doc_ref              varchar(300)                          not null,
    fk_doc               int                                   not null,
    fk_docdet            int                                   not null,
    thirdparty_code      varchar(32)                           null,
    subledger_account    varchar(32)                           null,
    subledger_label      varchar(255)                          null,
    numero_compte        varchar(32)                           null,
    label_compte         varchar(255)                          not null,
    label_operation      varchar(255)                          null,
    debit                double(24, 8)                         not null,
    credit               double(24, 8)                         not null,
    montant              double(24, 8)                         not null,
    sens                 varchar(1)                            null,
    multicurrency_amount double(24, 8)                         null,
    multicurrency_code   varchar(255)                          null,
    lettering_code       varchar(255)                          null,
    date_lettering       datetime                              null,
    fk_user_author       int                                   not null,
    fk_user_modif        int                                   null,
    date_creation        datetime                              null,
    tms                  timestamp default current_timestamp() not null on update current_timestamp(),
    import_key           varchar(14)                           null,
    code_journal         varchar(32)                           not null,
    journal_label        varchar(255)                          null,
    piece_num            int                                   not null,
    date_validated       datetime                              null,
    extraparams          varchar(255)                          null,
    date_lim_reglement   datetime                              null,
    fk_user              int                                   null
);

create index idx_accounting_bookkeeping_tmp_code_journal
    on dolibardev.llx_accounting_bookkeeping_tmp (code_journal);

create index idx_accounting_bookkeeping_tmp_doc_date
    on dolibardev.llx_accounting_bookkeeping_tmp (doc_date);

create index idx_accounting_bookkeeping_tmp_fk_docdet
    on dolibardev.llx_accounting_bookkeeping_tmp (fk_docdet);

create index idx_accounting_bookkeeping_tmp_numero_compte
    on dolibardev.llx_accounting_bookkeeping_tmp (numero_compte);

