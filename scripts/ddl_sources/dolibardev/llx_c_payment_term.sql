create table dolibardev.llx_c_payment_term
(
    rowid           int auto_increment
        primary key,
    entity          int     default 1 not null,
    code            varchar(16)       null,
    sortorder       smallint          null,
    active          tinyint default 1 null,
    libelle         varchar(255)      null,
    libelle_facture text              null,
    type_cdr        tinyint           null,
    nbjour          smallint          null,
    decalage        smallint          null,
    deposit_percent varchar(63)       null,
    module          varchar(32)       null,
    position        int     default 0 not null,
    constraint uk_c_payment_term_code
        unique (entity, code)
)
    charset = latin1;

