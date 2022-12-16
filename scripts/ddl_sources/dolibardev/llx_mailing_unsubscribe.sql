create table dolibardev.llx_mailing_unsubscribe
(
    rowid            int auto_increment
        primary key,
    entity           int          default 1                   not null,
    email            varchar(255)                             null,
    unsubscribegroup varchar(128) default ''                  null,
    ip               varchar(128)                             null,
    date_creat       datetime                                 null,
    tms              timestamp    default current_timestamp() not null on update current_timestamp(),
    constraint uk_mailing_unsubscribe
        unique (email, entity, unsubscribegroup)
);

