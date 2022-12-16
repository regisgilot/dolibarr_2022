create table dolibardev.llx_categorie
(
    rowid         int auto_increment
        primary key,
    entity        int       default 1                   not null,
    fk_parent     int       default 0                   not null,
    label         varchar(255)                          not null,
    type          int       default 1                   not null,
    description   text                                  null,
    fk_soc        int                                   null,
    visible       tinyint   default 1                   not null,
    import_key    varchar(14)                           null,
    color         varchar(8)                            null,
    ref_ext       varchar(255)                          null,
    date_creation datetime                              null,
    tms           timestamp default current_timestamp() not null on update current_timestamp(),
    fk_user_creat int                                   null,
    fk_user_modif int                                   null,
    constraint uk_categorie_ref
        unique (entity, fk_parent, label, type)
)
    charset = latin1;

create index idx_categorie_label
    on dolibardev.llx_categorie (label);

create index idx_categorie_type
    on dolibardev.llx_categorie (type);

