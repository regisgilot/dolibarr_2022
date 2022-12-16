create table llx_societe_address
(
    rowid         int auto_increment
        primary key,
    datec         datetime                            null,
    tms           timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    label         varchar(30)                         null,
    fk_soc        int       default 0                 null,
    name          varchar(60)                         null,
    address       varchar(255)                        null,
    zip           varchar(10)                         null,
    town          varchar(50)                         null,
    fk_pays       int       default 0                 null,
    phone         varchar(20)                         null,
    fax           varchar(20)                         null,
    note          text                                null,
    fk_user_creat int                                 null,
    fk_user_modif int                                 null
)
    engine = InnoDB;

