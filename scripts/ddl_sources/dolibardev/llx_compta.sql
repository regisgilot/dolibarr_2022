create table dolibardev.llx_compta
(
    rowid             int auto_increment
        primary key,
    datec             datetime          null,
    datev             date              null,
    amount            double  default 0 not null,
    label             varchar(255)      null,
    fk_compta_account int               null,
    fk_user_author    int               null,
    fk_user_valid     int               null,
    valid             tinyint default 0 null,
    note              text              null
)
    charset = latin1;

