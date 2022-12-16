create table dolibardev.llx_c_productbatch_qcstatus
(
    rowid  int auto_increment
        primary key,
    entity int default 1 not null,
    code   varchar(16)   not null,
    label  varchar(128)  null,
    active int default 1 not null,
    constraint uk_c_productbatch_qcstatus
        unique (code, entity)
);

