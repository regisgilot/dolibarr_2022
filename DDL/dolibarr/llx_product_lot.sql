create table llx_product_lot
(
    rowid              int auto_increment
        primary key,
    entity             int       default 1                 null,
    fk_product         int                                 not null,
    batch              varchar(128)                        null,
    eatby              date                                null,
    sellby             date                                null,
    eol_date           datetime                            null,
    manufacturing_date datetime                            null,
    scrapping_date     datetime                            null,
    barcode            varchar(180)                        null,
    fk_barcode_type    int                                 null,
    datec              datetime                            null,
    tms                timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_user_creat      int                                 null,
    fk_user_modif      int                                 null,
    import_key         int                                 null,
    constraint uk_product_lot
        unique (fk_product, batch)
)
    engine = InnoDB;

