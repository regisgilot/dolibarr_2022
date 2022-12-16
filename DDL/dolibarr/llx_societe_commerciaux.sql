create table llx_societe_commerciaux
(
    rowid      int auto_increment
        primary key,
    fk_soc     int         null,
    fk_user    int         null,
    import_key varchar(14) null,
    constraint uk_societe_commerciaux
        unique (fk_soc, fk_user)
)
    engine = InnoDB;

