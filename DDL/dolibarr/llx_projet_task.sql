create table llx_projet_task
(
    rowid              int auto_increment
        primary key,
    ref                varchar(50)                         null,
    entity             int       default 1                 not null,
    fk_projet          int                                 not null,
    fk_task_parent     int       default 0                 not null,
    datec              datetime                            null,
    tms                timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    dateo              datetime                            null,
    datee              datetime                            null,
    datev              datetime                            null,
    label              varchar(255)                        not null,
    description        text                                null,
    duration_effective double    default 0                 null,
    planned_workload   double    default 0                 null,
    progress           int       default 0                 null,
    priority           int       default 0                 null,
    budget_amount      double(24, 8)                       null,
    fk_user_creat      int                                 null,
    fk_user_modif      int                                 null,
    fk_user_valid      int                                 null,
    fk_statut          smallint  default 0                 not null,
    note_private       text                                null,
    note_public        text                                null,
    rang               int       default 0                 null,
    model_pdf          varchar(255)                        null,
    import_key         varchar(14)                         null,
    status             int       default 1                 not null,
    constraint uk_projet_task_ref
        unique (ref, entity),
    constraint fk_projet_task_fk_projet
        foreign key (fk_projet) references llx_projet (rowid),
    constraint fk_projet_task_fk_user_creat
        foreign key (fk_user_creat) references llx_user (rowid),
    constraint fk_projet_task_fk_user_valid
        foreign key (fk_user_valid) references llx_user (rowid)
)
    engine = InnoDB;

create index idx_projet_task_fk_projet
    on llx_projet_task (fk_projet);

create index idx_projet_task_fk_user_creat
    on llx_projet_task (fk_user_creat);

create index idx_projet_task_fk_user_valid
    on llx_projet_task (fk_user_valid);

