create table dolibardev.llx_adherent_type
(
    rowid         int auto_increment
        primary key,
    entity        int        default 1                   not null,
    tms           timestamp  default current_timestamp() not null on update current_timestamp(),
    statut        smallint   default 0                   not null,
    libelle       varchar(50)                            not null,
    subscription  varchar(3) default '1'                 not null,
    amount        double(24, 8)                          null,
    caneditamount int        default 0                   null,
    vote          varchar(3) default '1'                 not null,
    note          text                                   null,
    mail_valid    text                                   null,
    morphy        varchar(3)                             null,
    duration      varchar(6)                             null,
    constraint uk_adherent_type_libelle
        unique (libelle, entity)
)
    charset = latin1;

