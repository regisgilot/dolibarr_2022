create table llx_projet_task_time
(
    rowid                int auto_increment
        primary key,
    fk_task              int                                 not null,
    task_date            date                                null,
    task_datehour        datetime                            null,
    task_date_withhour   int       default 0                 null,
    task_duration        double                              null,
    fk_product           int                                 null,
    fk_user              int                                 null,
    thm                  double(24, 8)                       null,
    invoice_id           int                                 null,
    invoice_line_id      int                                 null,
    intervention_id      int                                 null,
    intervention_line_id int                                 null,
    import_key           varchar(14)                         null,
    datec                datetime                            null,
    tms                  timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    note                 text                                null
)
    engine = InnoDB;

create index idx_projet_task_time_date
    on llx_projet_task_time (task_date);

create index idx_projet_task_time_datehour
    on llx_projet_task_time (task_datehour);

create index idx_projet_task_time_task
    on llx_projet_task_time (fk_task);

