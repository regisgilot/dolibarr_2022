create table dolibardev.llx_societe_log
(
    id        int auto_increment
        primary key,
    datel     datetime     null,
    fk_soc    int          null,
    fk_statut int          null,
    fk_user   int          null,
    author    varchar(30)  null,
    label     varchar(128) null
)
    charset = latin1;

