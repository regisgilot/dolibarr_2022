create table llx_contratdet_log
(
    rowid          int auto_increment
        primary key,
    tms            timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_contratdet  int                                 not null,
    date           datetime                            not null,
    statut         smallint                            not null,
    fk_user_author int                                 not null,
    commentaire    text                                null,
    constraint fk_contratdet_log_fk_contratdet
        foreign key (fk_contratdet) references llx_contratdet (rowid)
)
    engine = InnoDB;

create index idx_contratdet_log_date
    on llx_contratdet_log (date);

create index idx_contratdet_log_fk_contratdet
    on llx_contratdet_log (fk_contratdet);

