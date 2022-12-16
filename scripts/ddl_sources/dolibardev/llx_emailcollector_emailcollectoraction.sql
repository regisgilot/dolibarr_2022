create table dolibardev.llx_emailcollector_emailcollectoraction
(
    rowid             int auto_increment
        primary key,
    fk_emailcollector int                                   not null,
    type              varchar(128)                          not null,
    actionparam       text                                  null,
    date_creation     datetime                              not null,
    tms               timestamp default current_timestamp() not null on update current_timestamp(),
    fk_user_creat     int                                   not null,
    fk_user_modif     int                                   null,
    position          int       default 0                   null,
    import_key        varchar(14)                           null,
    status            int                                   not null,
    constraint uk_emailcollector_emailcollectoraction
        unique (fk_emailcollector, type),
    constraint fk_emailcollectoraction_fk_emailcollector
        foreign key (fk_emailcollector) references dolibardev.llx_emailcollector_emailcollector (rowid)
);

create index idx_emailcollector_fk_emailcollector
    on dolibardev.llx_emailcollector_emailcollectoraction (fk_emailcollector);

