create table llx_c_shipment_package_type
(
    rowid       int auto_increment
        primary key,
    label       varchar(128)  not null,
    description varchar(255)  null,
    active      int default 1 not null,
    entity      int default 1 not null
)
    engine = InnoDB;

