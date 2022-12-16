create table dolibardev.llx_chargesociales
(
    rowid             int auto_increment
        primary key,
    date_ech          datetime                              not null,
    libelle           varchar(80)                           not null,
    entity            int       default 1                   not null,
    tms               timestamp default current_timestamp() not null on update current_timestamp(),
    date_creation     datetime                              null,
    date_valid        datetime                              null,
    fk_type           int                                   not null,
    fk_account        int                                   null,
    fk_mode_reglement int                                   null,
    amount            double(24, 8)                         null,
    paye              smallint  default 0                   not null,
    periode           date                                  null,
    import_key        varchar(14)                           null,
    fk_user_author    int                                   null,
    fk_user_modif     int                                   null,
    fk_user_valid     int                                   null,
    ref               varchar(16)                           null,
    fk_projet         int                                   null,
    fk_user           int                                   null,
    note_private      text                                  null,
    note_public       text                                  null
)
    charset = latin1;

