create table llx_deliverydet
(
    rowid          int auto_increment
        primary key,
    fk_delivery    int                              null,
    fk_origin_line int                              null,
    fk_product     int                              null,
    description    text                             null,
    qty            double                           null,
    subprice       double(24, 8) default 0.00000000 null,
    total_ht       double(24, 8) default 0.00000000 null,
    rang           int           default 0          null,
    constraint fk_deliverydet_fk_delivery
        foreign key (fk_delivery) references llx_delivery (rowid)
)
    engine = InnoDB;

create index idx_deliverydet_fk_delivery
    on llx_deliverydet (fk_delivery);

