create table dolibardev.llx_compta_compte_generaux
(
    rowid          int auto_increment
        primary key,
    date_creation  datetime     null,
    numero         varchar(50)  null,
    intitule       varchar(255) null,
    fk_user_author int          null,
    note           text         null,
    constraint numero
        unique (numero)
)
    charset = latin1;

