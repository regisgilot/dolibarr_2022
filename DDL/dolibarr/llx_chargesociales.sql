create table llx_chargesociales
(
    rowid             int auto_increment
        primary key,
    ref               varchar(16)                             null,
    date_ech          datetime                                not null,
    libelle           varchar(80)                             not null,
    entity            int           default 1                 not null,
    tms               timestamp     default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    date_creation     datetime                                null,
    date_valid        datetime                                null,
    fk_user           int                                     null,
    fk_user_author    int                                     null,
    fk_user_modif     int                                     null,
    fk_user_valid     int                                     null,
    fk_type           int                                     not null,
    fk_account        int                                     null,
    fk_mode_reglement int                                     null,
    amount            double(24, 8) default 0.00000000        not null,
    paye              smallint      default 0                 not null,
    periode           date                                    null,
    fk_projet         int                                     null,
    note_private      text                                    null,
    note_public       text                                    null,
    import_key        varchar(14)                             null
)
    engine = InnoDB;

