create table dolibardev.llx_user_rib
(
    rowid         int auto_increment
        primary key,
    fk_user       int                                   not null,
    entity        int       default 1                   not null,
    datec         datetime                              null,
    tms           timestamp default current_timestamp() not null on update current_timestamp(),
    label         varchar(30)                           null,
    bank          varchar(255)                          null,
    code_banque   varchar(128)                          null,
    code_guichet  varchar(6)                            null,
    number        varchar(255)                          null,
    cle_rib       varchar(5)                            null,
    bic           varchar(11)                           null,
    iban_prefix   varchar(34)                           null,
    domiciliation varchar(255)                          null,
    proprio       varchar(60)                           null,
    owner_address varchar(255)                          null,
    state_id      int                                   null,
    fk_country    int                                   null,
    currency_code varchar(3)                            null
);

