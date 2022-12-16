create table llx_c_forme_juridique
(
    rowid         int auto_increment
        primary key,
    code          int               not null,
    fk_pays       int               not null,
    libelle       varchar(255)      null,
    isvatexempted tinyint default 0 not null,
    active        tinyint default 1 not null,
    module        varchar(32)       null,
    position      int     default 0 not null,
    constraint uk_c_forme_juridique
        unique (code)
)
    engine = InnoDB;

