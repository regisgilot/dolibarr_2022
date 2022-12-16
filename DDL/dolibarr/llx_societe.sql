create table llx_societe
(
    rowid                     int auto_increment
        primary key,
    nom                       varchar(128)                        null,
    name_alias                varchar(128)                        null,
    entity                    int       default 1                 not null,
    ref_ext                   varchar(255)                        null,
    ref_int                   varchar(255)                        null,
    statut                    tinyint   default 0                 null,
    parent                    int                                 null,
    status                    tinyint   default 1                 null,
    code_client               varchar(24)                         null,
    code_fournisseur          varchar(24)                         null,
    code_compta               varchar(24)                         null,
    code_compta_fournisseur   varchar(24)                         null,
    address                   varchar(255)                        null,
    zip                       varchar(25)                         null,
    town                      varchar(50)                         null,
    fk_departement            int       default 0                 null,
    fk_pays                   int       default 0                 null,
    fk_account                int       default 0                 null,
    phone                     varchar(20)                         null,
    fax                       varchar(20)                         null,
    url                       varchar(255)                        null,
    email                     varchar(128)                        null,
    socialnetworks            text                                null,
    fk_effectif               int       default 0                 null,
    fk_typent                 int                                 null,
    fk_forme_juridique        int       default 0                 null,
    fk_currency               varchar(3)                          null,
    siren                     varchar(128)                        null,
    siret                     varchar(128)                        null,
    ape                       varchar(128)                        null,
    idprof4                   varchar(128)                        null,
    idprof5                   varchar(128)                        null,
    idprof6                   varchar(128)                        null,
    tva_intra                 varchar(20)                         null,
    capital                   double(24, 8)                       null,
    fk_stcomm                 int       default 0                 not null,
    note_private              text                                null,
    note_public               text                                null,
    model_pdf                 varchar(255)                        null,
    last_main_doc             varchar(255)                        null,
    prefix_comm               varchar(5)                          null,
    client                    tinyint   default 0                 null,
    fournisseur               tinyint   default 0                 null,
    supplier_account          varchar(32)                         null,
    fk_prospectlevel          varchar(12)                         null,
    fk_incoterms              int                                 null,
    location_incoterms        varchar(255)                        null,
    customer_bad              tinyint   default 0                 null,
    customer_rate             double    default 0                 null,
    supplier_rate             double    default 0                 null,
    remise_client             double    default 0                 null,
    remise_supplier           double    default 0                 null,
    mode_reglement            tinyint                             null,
    cond_reglement            tinyint                             null,
    deposit_percent           varchar(63)                         null,
    transport_mode            tinyint                             null,
    mode_reglement_supplier   tinyint                             null,
    cond_reglement_supplier   tinyint                             null,
    transport_mode_supplier   tinyint                             null,
    fk_shipping_method        int                                 null,
    tva_assuj                 tinyint   default 1                 null,
    localtax1_assuj           tinyint   default 0                 null,
    localtax1_value           double(7, 4)                        null,
    localtax2_assuj           tinyint   default 0                 null,
    localtax2_value           double(7, 4)                        null,
    barcode                   varchar(180)                        null,
    fk_barcode_type           int       default 0                 null,
    price_level               int                                 null,
    outstanding_limit         double(24, 8)                       null,
    order_min_amount          double(24, 8)                       null,
    supplier_order_min_amount double(24, 8)                       null,
    default_lang              varchar(6)                          null,
    logo                      varchar(255)                        null,
    logo_squarred             varchar(255)                        null,
    canvas                    varchar(32)                         null,
    fk_warehouse              int                                 null,
    webservices_url           varchar(255)                        null,
    webservices_key           varchar(128)                        null,
    accountancy_code_sell     varchar(32)                         null,
    accountancy_code_buy      varchar(32)                         null,
    tms                       timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    datec                     datetime                            null,
    fk_user_creat             int                                 null,
    fk_user_modif             int                                 null,
    fk_multicurrency          int                                 null,
    multicurrency_code        varchar(3)                          null,
    import_key                varchar(14)                         null,
    constraint uk_societe_barcode
        unique (barcode, fk_barcode_type, entity),
    constraint uk_societe_code_client
        unique (code_client, entity),
    constraint uk_societe_code_fournisseur
        unique (code_fournisseur, entity),
    constraint uk_societe_prefix_comm
        unique (prefix_comm, entity)
)
    engine = InnoDB;

create index idx_societe_account
    on llx_societe (fk_account);

create index idx_societe_forme_juridique
    on llx_societe (fk_forme_juridique);

create index idx_societe_pays
    on llx_societe (fk_pays);

create index idx_societe_prospectlevel
    on llx_societe (fk_prospectlevel);

create index idx_societe_shipping_method
    on llx_societe (fk_shipping_method);

create index idx_societe_stcomm
    on llx_societe (fk_stcomm);

create index idx_societe_typent
    on llx_societe (fk_typent);

create index idx_societe_user_creat
    on llx_societe (fk_user_creat);

create index idx_societe_user_modif
    on llx_societe (fk_user_modif);

