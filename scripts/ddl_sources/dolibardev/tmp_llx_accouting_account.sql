create table dolibardev.tmp_llx_accouting_account
(
    MINID          int                        null,
    MAXID          int                        null,
    account_number varchar(32) charset latin1 not null,
    entity         int default 1              not null,
    fk_pcg_version varchar(32) charset latin1 not null,
    NB             bigint(21)                 not null
);

