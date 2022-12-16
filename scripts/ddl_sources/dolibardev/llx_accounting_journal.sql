create table dolibardev.llx_accounting_journal
(
    rowid  int auto_increment
        primary key,
    code   varchar(20) collate utf8mb3_unicode_ci null,
    label  varchar(128)                           not null,
    nature smallint default 0                     not null,
    active smallint default 0                     null,
    entity int      default 1                     null,
    constraint uk_accounting_journal_code
        unique (code, entity)
);

