create table llx_entrepot
(
    rowid           int auto_increment
        primary key,
    ref             varchar(255)                        not null,
    datec           datetime                            null,
    tms             timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    entity          int       default 1                 not null,
    fk_project      int                                 null,
    description     text                                null,
    lieu            varchar(64)                         null,
    address         varchar(255)                        null,
    zip             varchar(10)                         null,
    town            varchar(50)                         null,
    fk_departement  int                                 null,
    fk_pays         int       default 0                 null,
    phone           varchar(20)                         null,
    fax             varchar(20)                         null,
    barcode         varchar(180)                        null,
    fk_barcode_type int                                 null,
    warehouse_usage int       default 1                 null,
    statut          tinyint   default 1                 null,
    fk_user_author  int                                 null,
    model_pdf       varchar(255)                        null,
    import_key      varchar(14)                         null,
    fk_parent       int       default 0                 null,
    constraint uk_entrepot_label
        unique (ref, entity)
)
    engine = InnoDB;

