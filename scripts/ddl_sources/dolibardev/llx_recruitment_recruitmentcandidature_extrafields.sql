create table dolibardev.llx_recruitment_recruitmentcandidature_extrafields
(
    rowid      int auto_increment
        primary key,
    tms        timestamp default current_timestamp() not null on update current_timestamp(),
    fk_object  int                                   not null,
    import_key varchar(14)                           null
);

create index idx_recruitmentcandidature_fk_object
    on dolibardev.llx_recruitment_recruitmentcandidature_extrafields (fk_object);

