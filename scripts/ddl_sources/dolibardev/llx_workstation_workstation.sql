create table dolibardev.llx_workstation_workstation
(
    rowid                  int auto_increment
        primary key,
    ref                    varchar(128) default '(PROV)'            not null,
    label                  varchar(255)                             null,
    type                   varchar(7)                               null,
    note_public            text                                     null,
    entity                 int          default 1                   null,
    note_private           text                                     null,
    date_creation          datetime                                 not null,
    tms                    timestamp    default current_timestamp() not null on update current_timestamp(),
    fk_user_creat          int                                      not null,
    fk_user_modif          int                                      null,
    import_key             varchar(14)                              null,
    status                 smallint                                 not null,
    nb_operators_required  int                                      null,
    thm_operator_estimated double                                   null,
    thm_machine_estimated  double                                   null,
    constraint fk_workstation_workstation_fk_user_creat
        foreign key (fk_user_creat) references dolibardev.llx_user (rowid)
);

create index idx_workstation_workstation_ref
    on dolibardev.llx_workstation_workstation (ref);

create index idx_workstation_workstation_rowid
    on dolibardev.llx_workstation_workstation (rowid);

create index idx_workstation_workstation_status
    on dolibardev.llx_workstation_workstation (status);

