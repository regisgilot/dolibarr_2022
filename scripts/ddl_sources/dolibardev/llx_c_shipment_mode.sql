create table dolibardev.llx_c_shipment_mode
(
    rowid       int auto_increment
        primary key,
    tms         timestamp default current_timestamp() not null on update current_timestamp(),
    code        varchar(30)                           not null,
    libelle     varchar(128)                          null,
    description text                                  null,
    tracking    varchar(255)                          null,
    active      tinyint   default 0                   null,
    module      varchar(32)                           null,
    entity      int       default 1                   not null,
    constraint uk_c_shipment_mode
        unique (code, entity)
)
    charset = latin1;

