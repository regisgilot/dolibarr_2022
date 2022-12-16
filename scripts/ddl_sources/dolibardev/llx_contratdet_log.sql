create table dolibardev.llx_contratdet_log
(
    rowid          int auto_increment
        primary key,
    tms            timestamp default current_timestamp() not null on update current_timestamp(),
    fk_contratdet  int                                   not null,
    date           datetime                              not null,
    statut         smallint                              not null,
    fk_user_author int                                   not null,
    commentaire    text                                  null,
    constraint fk_contratdet_log_fk_contratdet
        foreign key (fk_contratdet) references dolibardev.llx_contratdet (rowid)
)
    charset = latin1;

create index idx_contratdet_log_date
    on dolibardev.llx_contratdet_log (date);

create index idx_contratdet_log_fk_contratdet
    on dolibardev.llx_contratdet_log (fk_contratdet);

