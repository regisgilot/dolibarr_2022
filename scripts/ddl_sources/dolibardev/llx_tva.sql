create table dolibardev.llx_tva
(
    rowid          int auto_increment
        primary key,
    tms            timestamp default current_timestamp() not null on update current_timestamp(),
    datec          date                                  null,
    datep          date                                  null,
    datev          date                                  null,
    amount         double(24, 8)                         null,
    fk_typepayment int                                   null,
    num_payment    varchar(50)                           null,
    label          varchar(255)                          null,
    entity         int       default 1                   not null,
    note           text                                  null,
    fk_bank        int                                   null,
    fk_user_creat  int                                   null,
    fk_user_modif  int                                   null,
    import_key     varchar(14)                           null,
    paye           smallint  default 0                   not null,
    fk_account     int                                   null
)
    charset = latin1;

