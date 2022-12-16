create table dolibardev.llx_c_accounting_category
(
    rowid         int auto_increment
        primary key,
    entity        int     default 1 not null,
    code          varchar(16)       not null,
    label         varchar(255)      not null,
    range_account varchar(255)      not null,
    sens          tinyint default 0 not null,
    category_type tinyint default 0 not null,
    formula       varchar(255)      not null,
    position      int     default 0 null,
    fk_country    int               null,
    active        int     default 1 null,
    constraint uk_c_accounting_category
        unique (code, entity)
);

