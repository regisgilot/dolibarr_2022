create table dolibardev.llx_compta_account
(
    rowid          int auto_increment
        primary key,
    datec          datetime     null,
    number         varchar(12)  null,
    label          varchar(255) null,
    fk_user_author int          null,
    note           text         null
)
    charset = latin1;

