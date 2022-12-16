create table llx_accounting_journal
(
    rowid  int auto_increment
        primary key,
    entity int      default 1 not null,
    code   varchar(32)        not null,
    label  varchar(128)       not null,
    nature smallint default 1 not null,
    active smallint default 0 null,
    constraint uk_accounting_journal_code
        unique (code, entity)
)
    engine = InnoDB;

