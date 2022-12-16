create table dolibardev.llx_projet_task
(
    rowid              int auto_increment
        primary key,
    ref                varchar(50)                           null,
    entity             int       default 1                   not null,
    fk_projet          int                                   not null,
    fk_task_parent     int       default 0                   not null,
    datec              datetime                              null,
    tms                timestamp default current_timestamp() not null on update current_timestamp(),
    dateo              datetime                              null,
    datee              datetime                              null,
    datev              datetime                              null,
    label              varchar(255)                          not null,
    description        text                                  null,
    duration_effective double    default 0                   null,
    planned_workload   double    default 0                   null,
    progress           int       default 0                   null,
    priority           int       default 0                   null,
    budget_amount      double(24, 8)                         null,
    fk_user_creat      int                                   null,
    fk_user_valid      int                                   null,
    fk_statut          smallint  default 0                   not null,
    note_private       text                                  null,
    note_public        text                                  null,
    rang               int       default 0                   null,
    model_pdf          varchar(255)                          null,
    import_key         varchar(14)                           null,
    fk_user_modif      int                                   null,
    status             int       default 1                   not null,
    constraint uk_projet_task_ref
        unique (ref, entity),
    constraint fk_projet_task_fk_projet
        foreign key (fk_projet) references dolibardev.llx_projet (rowid),
    constraint fk_projet_task_fk_user_creat
        foreign key (fk_user_creat) references dolibardev.llx_user (rowid),
    constraint fk_projet_task_fk_user_valid
        foreign key (fk_user_valid) references dolibardev.llx_user (rowid)
)
    charset = latin1;

create index idx_projet_task_fk_projet
    on dolibardev.llx_projet_task (fk_projet);

create index idx_projet_task_fk_user_creat
    on dolibardev.llx_projet_task (fk_user_creat);

create index idx_projet_task_fk_user_valid
    on dolibardev.llx_projet_task (fk_user_valid);

