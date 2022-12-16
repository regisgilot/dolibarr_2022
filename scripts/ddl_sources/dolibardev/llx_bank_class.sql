create table dolibardev.llx_bank_class
(
    lineid   int not null,
    fk_categ int not null,
    constraint uk_bank_class_lineid
        unique (lineid, fk_categ)
)
    charset = latin1;

