create table dolibardev.llx_c_barcode_type
(
    rowid   int auto_increment
        primary key,
    code    varchar(16)   not null,
    entity  int default 1 not null,
    libelle varchar(128)  null,
    coder   varchar(16)   not null,
    example varchar(16)   not null,
    constraint uk_c_barcode_type
        unique (code, entity)
)
    charset = latin1;

