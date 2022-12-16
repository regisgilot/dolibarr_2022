create table llx_localtax
(
    rowid         int auto_increment
        primary key,
    entity        int       default 1                 not null,
    localtaxtype  tinyint                             null,
    tms           timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    datep         date                                null,
    datev         date                                null,
    amount        double                              null,
    label         varchar(255)                        null,
    note          text                                null,
    fk_bank       int                                 null,
    fk_user_creat int                                 null,
    fk_user_modif int                                 null
)
    engine = InnoDB;

