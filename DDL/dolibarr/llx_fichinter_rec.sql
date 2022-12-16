create table llx_fichinter_rec
(
    rowid          int auto_increment
        primary key,
    titre          varchar(50)            not null,
    entity         int        default 1   not null,
    fk_soc         int                    null,
    datec          datetime               null,
    fk_contrat     int        default 0   null,
    fk_user_author int                    null,
    fk_projet      int                    null,
    duree          double                 null,
    description    text                   null,
    modelpdf       varchar(50)            null,
    note_private   text                   null,
    note_public    text                   null,
    frequency      int                    null,
    unit_frequency varchar(2) default 'm' null,
    date_when      datetime               null,
    date_last_gen  datetime               null,
    nb_gen_done    int                    null,
    nb_gen_max     int                    null,
    auto_validate  int                    null,
    constraint idx_fichinter_rec_uk_titre
        unique (titre, entity),
    constraint fk_fichinter_rec_fk_projet
        foreign key (fk_projet) references llx_projet (rowid),
    constraint fk_fichinter_rec_fk_user_author
        foreign key (fk_user_author) references llx_user (rowid)
)
    engine = InnoDB;

create index idx_fichinter_rec_fk_projet
    on llx_fichinter_rec (fk_projet);

create index idx_fichinter_rec_fk_soc
    on llx_fichinter_rec (fk_soc);

create index idx_fichinter_rec_fk_user_author
    on llx_fichinter_rec (fk_user_author);

