create table dolibardev.llx_c_paiement
(
    id               int auto_increment
        primary key,
    entity           int     default 1 not null,
    code             varchar(6)        not null,
    libelle          varchar(128)      null,
    type             smallint          null,
    active           tinyint default 1 not null,
    accountancy_code varchar(32)       null,
    module           varchar(32)       null,
    position         int     default 0 not null,
    constraint uk_c_paiement_code
        unique (entity, code)
)
    charset = latin1;

