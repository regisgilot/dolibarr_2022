create table llx_c_shipment_mode
(
    rowid       int auto_increment
        primary key,
    entity      int       default 1                 not null,
    tms         timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    code        varchar(30)                         not null,
    libelle     varchar(128)                        not null,
    description text                                null,
    tracking    varchar(255)                        null,
    active      tinyint   default 0                 null,
    module      varchar(32)                         null,
    constraint uk_c_shipment_mode
        unique (code, entity)
)
    engine = InnoDB;

