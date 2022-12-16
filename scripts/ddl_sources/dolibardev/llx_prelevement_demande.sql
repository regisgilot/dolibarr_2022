create table dolibardev.llx_prelevement_demande
(
    rowid               int auto_increment
        primary key,
    fk_facture          int                null,
    amount              double(24, 8)      null,
    date_demande        datetime           not null,
    traite              smallint default 0 null,
    date_traite         datetime           null,
    fk_prelevement_bons int                null,
    fk_user_demande     int                not null,
    code_banque         varchar(128)       null,
    code_guichet        varchar(6)         null,
    number              varchar(255)       null,
    cle_rib             varchar(5)         null,
    entity              int                null,
    sourcetype          varchar(32)        null,
    ext_payment_id      varchar(255)       null,
    ext_payment_site    varchar(128)       null,
    fk_facture_fourn    int                null,
    fk_salary           int                null
)
    charset = latin1;

create index idx_prelevement_facture_demande_fk_facture
    on dolibardev.llx_prelevement_demande (fk_facture);

create index idx_prelevement_facture_demande_fk_facture_fourn
    on dolibardev.llx_prelevement_demande (fk_facture_fourn);

