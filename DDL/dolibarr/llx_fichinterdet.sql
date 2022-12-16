create table llx_fichinterdet
(
    rowid          int auto_increment
        primary key,
    fk_fichinter   int           null,
    fk_parent_line int           null,
    date           datetime      null,
    description    text          null,
    duree          int           null,
    rang           int default 0 null,
    constraint fk_fichinterdet_fk_fichinter
        foreign key (fk_fichinter) references llx_fichinter (rowid)
)
    engine = InnoDB;

create index idx_fichinterdet_fk_fichinter
    on llx_fichinterdet (fk_fichinter);

