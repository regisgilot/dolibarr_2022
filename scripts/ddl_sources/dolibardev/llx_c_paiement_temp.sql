create table dolibardev.llx_c_paiement_temp
(
    id               int                        not null,
    entity           int     default 1          not null,
    code             varchar(6) charset latin1  not null,
    libelle          varchar(62) charset latin1 null,
    type             smallint                   null,
    active           tinyint default 1          not null,
    accountancy_code varchar(32) charset latin1 null,
    module           varchar(32) charset latin1 null,
    position         int     default 0          not null
);

