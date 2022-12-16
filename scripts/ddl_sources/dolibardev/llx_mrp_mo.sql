create table dolibardev.llx_mrp_mo
(
    rowid              int auto_increment
        primary key,
    ref                varchar(128) default '(PROV)'            not null,
    entity             int          default 1                   not null,
    label              varchar(255)                             null,
    qty                double                                   not null,
    fk_warehouse       int                                      null,
    fk_soc             int                                      null,
    note_public        text                                     null,
    note_private       text                                     null,
    date_creation      datetime                                 not null,
    date_valid         datetime                                 null,
    tms                timestamp    default current_timestamp() not null on update current_timestamp(),
    fk_user_creat      int                                      not null,
    fk_user_modif      int                                      null,
    fk_user_valid      int                                      null,
    model_pdf          varchar(255)                             null,
    import_key         varchar(14)                              null,
    status             int                                      not null,
    fk_product         int                                      not null,
    date_start_planned datetime                                 null,
    date_end_planned   datetime                                 null,
    fk_bom             int                                      null,
    fk_project         int                                      null,
    last_main_doc      varchar(255)                             null,
    mrptype            int          default 0                   null,
    fk_parent_line     int                                      null,
    constraint fk_mrp_mo_fk_user_creat
        foreign key (fk_user_creat) references dolibardev.llx_user (rowid)
);

create index idx_mrp_mo_date_end_planned
    on dolibardev.llx_mrp_mo (date_end_planned);

create index idx_mrp_mo_date_start_planned
    on dolibardev.llx_mrp_mo (date_start_planned);

create index idx_mrp_mo_entity
    on dolibardev.llx_mrp_mo (entity);

create index idx_mrp_mo_fk_bom
    on dolibardev.llx_mrp_mo (fk_bom);

create index idx_mrp_mo_fk_product
    on dolibardev.llx_mrp_mo (fk_product);

create index idx_mrp_mo_fk_project
    on dolibardev.llx_mrp_mo (fk_project);

create index idx_mrp_mo_fk_soc
    on dolibardev.llx_mrp_mo (fk_soc);

create index idx_mrp_mo_ref
    on dolibardev.llx_mrp_mo (ref);

create index idx_mrp_mo_status
    on dolibardev.llx_mrp_mo (status);

