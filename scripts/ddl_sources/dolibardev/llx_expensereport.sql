create table dolibardev.llx_expensereport
(
    rowid                   int auto_increment
        primary key,
    ref                     varchar(50)                               not null,
    entity                  int           default 1                   not null,
    ref_number_int          int                                       null,
    ref_ext                 int                                       null,
    total_ht                double(24, 8) default 0.00000000          null,
    total_tva               double(24, 8) default 0.00000000          null,
    localtax1               double(24, 8) default 0.00000000          null,
    localtax2               double(24, 8) default 0.00000000          null,
    total_ttc               double(24, 8) default 0.00000000          null,
    date_debut              date                                      not null,
    date_fin                date                                      not null,
    date_create             datetime                                  not null,
    date_valid              datetime                                  null,
    date_approve            datetime                                  null,
    date_refuse             datetime                                  null,
    date_cancel             datetime                                  null,
    tms                     timestamp     default current_timestamp() not null on update current_timestamp(),
    fk_user_author          int                                       not null,
    fk_user_modif           int                                       null,
    fk_user_valid           int                                       null,
    fk_user_validator       int                                       null,
    fk_user_approve         int                                       null,
    fk_user_refuse          int                                       null,
    fk_user_cancel          int                                       null,
    fk_statut               int                                       not null,
    fk_c_paiement           int                                       null,
    paid                    smallint      default 0                   not null,
    note_public             text                                      null,
    note_private            text                                      null,
    detail_refuse           varchar(255)                              null,
    detail_cancel           varchar(255)                              null,
    integration_compta      int                                       null,
    fk_bank_account         int                                       null,
    model_pdf               varchar(50)                               null,
    last_main_doc           varchar(255)                              null,
    import_key              varchar(14)                               null,
    extraparams             varchar(255)                              null,
    fk_multicurrency        int                                       null,
    multicurrency_code      varchar(3)                                null,
    multicurrency_tx        double(24, 8) default 1.00000000          null,
    multicurrency_total_ht  double(24, 8) default 0.00000000          null,
    multicurrency_total_tva double(24, 8) default 0.00000000          null,
    multicurrency_total_ttc double(24, 8) default 0.00000000          null,
    fk_user_creat           int                                       null,
    constraint idx_expensereport_uk_ref
        unique (ref, entity)
)
    charset = latin1;

create index idx_expensereport_date_debut
    on dolibardev.llx_expensereport (date_debut);

create index idx_expensereport_date_fin
    on dolibardev.llx_expensereport (date_fin);

create index idx_expensereport_fk_refuse
    on dolibardev.llx_expensereport (fk_user_approve);

create index idx_expensereport_fk_statut
    on dolibardev.llx_expensereport (fk_statut);

create index idx_expensereport_fk_user_approve
    on dolibardev.llx_expensereport (fk_user_approve);

create index idx_expensereport_fk_user_author
    on dolibardev.llx_expensereport (fk_user_author);

create index idx_expensereport_fk_user_valid
    on dolibardev.llx_expensereport (fk_user_valid);

