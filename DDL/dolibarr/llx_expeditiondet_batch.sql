create table llx_expeditiondet_batch
(
    rowid            int auto_increment
        primary key,
    fk_expeditiondet int              not null,
    eatby            date             null,
    sellby           date             null,
    batch            varchar(128)     null,
    qty              double default 0 not null,
    fk_origin_stock  int              not null,
    constraint fk_expeditiondet_batch_fk_expeditiondet
        foreign key (fk_expeditiondet) references llx_expeditiondet (rowid)
)
    engine = InnoDB;

create index idx_fk_expeditiondet
    on llx_expeditiondet_batch (fk_expeditiondet);

