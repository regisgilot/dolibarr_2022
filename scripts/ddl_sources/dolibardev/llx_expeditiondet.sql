create table dolibardev.llx_expeditiondet
(
    rowid          int auto_increment
        primary key,
    fk_expedition  int           not null,
    fk_origin_line int           null,
    fk_entrepot    int           null,
    qty            double        null,
    rang           int default 0 null,
    constraint fk_expeditiondet_fk_expedition
        foreign key (fk_expedition) references dolibardev.llx_expedition (rowid)
)
    charset = latin1;

create index idx_expeditiondet_fk_expedition
    on dolibardev.llx_expeditiondet (fk_expedition);

create index idx_expeditiondet_fk_origin_line
    on dolibardev.llx_expeditiondet (fk_origin_line);

