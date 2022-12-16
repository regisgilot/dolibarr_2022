create table dolibardev.llx_paiementcharge
(
    rowid           int auto_increment
        primary key,
    fk_charge       int                                   null,
    datec           datetime                              null,
    tms             timestamp default current_timestamp() not null on update current_timestamp(),
    datep           datetime                              null,
    amount          double(24, 8)                         null,
    fk_typepaiement int                                   not null,
    num_paiement    varchar(50)                           null,
    note            text                                  null,
    fk_bank         int                                   not null,
    fk_user_creat   int                                   null,
    fk_user_modif   int                                   null
)
    charset = latin1;

