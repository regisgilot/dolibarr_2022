create table llx_societe_rib
(
    rowid                            int auto_increment
        primary key,
    type                             varchar(32) default 'ban'             not null,
    label                            varchar(200)                          null,
    fk_soc                           int                                   not null,
    datec                            datetime                              null,
    tms                              timestamp   default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    bank                             varchar(255)                          null,
    code_banque                      varchar(128)                          null,
    code_guichet                     varchar(6)                            null,
    number                           varchar(255)                          null,
    cle_rib                          varchar(5)                            null,
    bic                              varchar(20)                           null,
    iban_prefix                      varchar(34)                           null,
    domiciliation                    varchar(255)                          null,
    proprio                          varchar(60)                           null,
    owner_address                    varchar(255)                          null,
    default_rib                      smallint    default 0                 not null,
    rum                              varchar(32)                           null,
    date_rum                         date                                  null,
    frstrecur                        varchar(16) default 'FRST'            null,
    last_four                        varchar(4)                            null,
    card_type                        varchar(255)                          null,
    cvn                              varchar(255)                          null,
    exp_date_month                   int                                   null,
    exp_date_year                    int                                   null,
    country_code                     varchar(10)                           null,
    approved                         int         default 0                 null,
    email                            varchar(255)                          null,
    ending_date                      date                                  null,
    max_total_amount_of_all_payments double(24, 8)                         null,
    preapproval_key                  varchar(255)                          null,
    starting_date                    date                                  null,
    total_amount_of_all_payments     double(24, 8)                         null,
    stripe_card_ref                  varchar(128)                          null,
    stripe_account                   varchar(128)                          null,
    comment                          varchar(255)                          null,
    ipaddress                        varchar(68)                           null,
    status                           int         default 1                 not null,
    import_key                       varchar(14)                           null,
    constraint uk_societe_rib
        unique (label, fk_soc),
    constraint llx_societe_rib_fk_societe
        foreign key (fk_soc) references llx_societe (rowid)
)
    engine = InnoDB;

