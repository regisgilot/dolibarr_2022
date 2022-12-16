create table dolibardev.llx_document_model
(
    rowid       int auto_increment
        primary key,
    nom         varchar(50)   null,
    entity      int default 1 not null,
    type        varchar(64)   null,
    libelle     varchar(255)  null,
    description text          null,
    constraint uk_document_model
        unique (nom, type, entity)
)
    charset = latin1;

