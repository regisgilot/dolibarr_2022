create table dolibardev.llx_fichinterdet
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
        foreign key (fk_fichinter) references dolibardev.llx_fichinter (rowid)
)
    charset = latin1;

create index idx_fichinterdet_fk_fichinter
    on dolibardev.llx_fichinterdet (fk_fichinter);

