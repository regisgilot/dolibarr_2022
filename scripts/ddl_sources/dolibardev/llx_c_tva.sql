create table dolibardev.llx_c_tva
(
    rowid                 int auto_increment
        primary key,
    fk_pays               int                     not null,
    code                  varchar(10) default ''  null,
    taux                  double                  not null,
    localtax1             varchar(20) default '0' not null,
    localtax1_type        varchar(10) default '0' not null,
    localtax2             varchar(20) default '0' not null,
    localtax2_type        varchar(10) default '0' not null,
    recuperableonly       int         default 0   not null,
    note                  varchar(128)            null,
    active                tinyint     default 1   not null,
    accountancy_code_sell varchar(32)             null,
    accountancy_code_buy  varchar(32)             null,
    use_default           tinyint     default 0   null,
    constraint uk_c_tva_id
        unique (fk_pays, code, taux, recuperableonly)
)
    charset = latin1;

