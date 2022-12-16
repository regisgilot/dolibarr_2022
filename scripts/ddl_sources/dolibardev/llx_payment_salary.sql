create table dolibardev.llx_payment_salary
(
    rowid          int auto_increment
        primary key,
    ref            varchar(30)                           null,
    tms            timestamp default current_timestamp() not null on update current_timestamp(),
    datec          datetime                              null,
    fk_user        int                                   null,
    datep          date                                  null,
    datev          date                                  null,
    salary         double(24, 8)                         null,
    amount         double(24, 8)                         null,
    fk_projet      int                                   null,
    fk_typepayment int                                   not null,
    num_payment    varchar(50)                           null,
    label          varchar(255)                          null,
    datesp         date                                  null,
    dateep         date                                  null,
    entity         int       default 1                   not null,
    note           text                                  null,
    fk_bank        int                                   null,
    fk_user_author int                                   null,
    fk_user_modif  int                                   null,
    fk_salary      int                                   null,
    constraint fk_payment_salary_user
        foreign key (fk_user) references dolibardev.llx_user (rowid)
)
    charset = latin1;

create index idx_payment_salary_dateep
    on dolibardev.llx_payment_salary (dateep);

create index idx_payment_salary_datep
    on dolibardev.llx_payment_salary (datep);

create index idx_payment_salary_datesp
    on dolibardev.llx_payment_salary (datesp);

create index idx_payment_salary_ref
    on dolibardev.llx_payment_salary (num_payment);

create index idx_payment_salary_user
    on dolibardev.llx_payment_salary (fk_user, entity);

