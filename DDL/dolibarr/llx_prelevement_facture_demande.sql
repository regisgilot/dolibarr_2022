create table llx_prelevement_facture_demande
(
    rowid               int auto_increment
        primary key,
    entity              int      default 1 not null,
    fk_facture          int                null,
    fk_facture_fourn    int                null,
    sourcetype          varchar(32)        null,
    amount              double(24, 8)      not null,
    date_demande        datetime           not null,
    traite              smallint default 0 null,
    date_traite         datetime           null,
    fk_prelevement_bons int                null,
    fk_user_demande     int                not null,
    code_banque         varchar(128)       null,
    code_guichet        varchar(6)         null,
    number              varchar(255)       null,
    cle_rib             varchar(5)         null,
    ext_payment_id      varchar(255)       null,
    ext_payment_site    varchar(128)       null
)
    engine = InnoDB;

create index idx_prelevement_facture_demande_fk_facture
    on llx_prelevement_facture_demande (fk_facture);

create index idx_prelevement_facture_demande_fk_facture_fourn
    on llx_prelevement_facture_demande (fk_facture_fourn);

