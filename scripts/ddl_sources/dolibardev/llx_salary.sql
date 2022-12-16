create table dolibardev.llx_salary
(
    rowid          int auto_increment
        primary key,
    ref            varchar(30)                               null,
    label          varchar(255)                              null,
    tms            timestamp     default current_timestamp() not null on update current_timestamp(),
    datec          datetime                                  null,
    fk_user        int                                       not null,
    datep          date                                      null,
    datev          date                                      null,
    salary         double(24, 8)                             null,
    amount         double(24, 8) default 0.00000000          not null,
    fk_projet      int                                       null,
    datesp         date                                      null,
    dateep         date                                      null,
    entity         int           default 1                   not null,
    note           text                                      null,
    fk_bank        int                                       null,
    paye           smallint      default 0                   not null,
    fk_typepayment int                                       not null,
    fk_account     int                                       null,
    fk_user_author int                                       null,
    fk_user_modif  int                                       null
);

