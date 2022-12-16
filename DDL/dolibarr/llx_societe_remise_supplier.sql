create table llx_societe_remise_supplier
(
    rowid           int auto_increment
        primary key,
    entity          int          default 1                 not null,
    fk_soc          int                                    not null,
    tms             timestamp    default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    datec           datetime                               null,
    fk_user_author  int                                    null,
    remise_supplier double(7, 4) default 0.0000            not null,
    note            text                                   null
)
    engine = InnoDB;

