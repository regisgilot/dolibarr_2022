create table llx_holiday
(
    rowid           int auto_increment
        primary key,
    ref             varchar(30)                         not null,
    ref_ext         varchar(255)                        null,
    entity          int       default 1                 not null,
    fk_user         int                                 not null,
    fk_user_create  int                                 null,
    fk_user_modif   int                                 null,
    fk_type         int                                 not null,
    date_create     datetime                            not null,
    description     varchar(255)                        not null,
    date_debut      date                                not null,
    date_fin        date                                not null,
    halfday         int       default 0                 null,
    nb_open_day     double(24, 8)                       null,
    statut          int       default 1                 not null,
    fk_validator    int                                 not null,
    date_valid      datetime                            null,
    fk_user_valid   int                                 null,
    date_approve    datetime                            null,
    fk_user_approve int                                 null,
    date_refuse     datetime                            null,
    fk_user_refuse  int                                 null,
    date_cancel     datetime                            null,
    fk_user_cancel  int                                 null,
    detail_refuse   varchar(250)                        null,
    note_private    text                                null,
    note_public     text                                null,
    tms             timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    import_key      varchar(14)                         null,
    extraparams     varchar(255)                        null
)
    engine = InnoDB;

create index idx_holiday_date_create
    on llx_holiday (date_create);

create index idx_holiday_date_debut
    on llx_holiday (date_debut);

create index idx_holiday_date_fin
    on llx_holiday (date_fin);

create index idx_holiday_entity
    on llx_holiday (entity);

create index idx_holiday_fk_user
    on llx_holiday (fk_user);

create index idx_holiday_fk_user_create
    on llx_holiday (fk_user_create);

create index idx_holiday_fk_validator
    on llx_holiday (fk_validator);

