create table llx_budget
(
    rowid         int auto_increment
        primary key,
    entity        int       default 1                 not null,
    label         varchar(255)                        not null,
    status        int                                 null,
    note          text                                null,
    date_start    date                                null,
    date_end      date                                null,
    datec         datetime                            null,
    tms           timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_user_creat int                                 null,
    fk_user_modif int                                 null,
    import_key    int                                 null
)
    engine = InnoDB;

