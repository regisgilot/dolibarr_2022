create table dolibardev.llx_projet_task_time
(
    rowid                int auto_increment
        primary key,
    fk_task              int                                   not null,
    task_date            date                                  null,
    task_datehour        datetime                              null,
    task_date_withhour   int       default 0                   null,
    task_duration        double                                null,
    fk_user              int                                   null,
    thm                  double(24, 8)                         null,
    note                 text                                  null,
    invoice_id           int                                   null,
    invoice_line_id      int                                   null,
    import_key           varchar(14)                           null,
    datec                datetime                              null,
    tms                  timestamp default current_timestamp() not null on update current_timestamp(),
    intervention_id      int                                   null,
    intervention_line_id int                                   null,
    fk_product           int                                   null
)
    charset = latin1;

create index idx_projet_task_time_date
    on dolibardev.llx_projet_task_time (task_date);

create index idx_projet_task_time_datehour
    on dolibardev.llx_projet_task_time (task_datehour);

create index idx_projet_task_time_task
    on dolibardev.llx_projet_task_time (fk_task);

