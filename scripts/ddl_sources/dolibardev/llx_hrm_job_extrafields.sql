create table dolibardev.llx_hrm_job_extrafields
(
    rowid      int auto_increment
        primary key,
    tms        timestamp default current_timestamp() not null on update current_timestamp(),
    fk_object  int                                   not null,
    import_key varchar(14)                           null
);

create index idx_job_fk_object
    on dolibardev.llx_hrm_job_extrafields (fk_object);

