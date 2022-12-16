create table dolibardev.llx_prelevement_rejet
(
    rowid                 int auto_increment
        primary key,
    fk_prelevement_lignes int               null,
    date_rejet            datetime          null,
    motif                 int               null,
    date_creation         datetime          null,
    fk_user_creation      int               null,
    note                  text              null,
    afacturer             tinyint default 0 null,
    fk_facture            int               null
)
    charset = latin1;

