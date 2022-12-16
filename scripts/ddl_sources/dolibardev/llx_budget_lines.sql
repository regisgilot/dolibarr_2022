create table dolibardev.llx_budget_lines
(
    rowid          int auto_increment
        primary key,
    fk_budget      int                                   not null,
    fk_project_ids varchar(255)                          not null,
    amount         double(24, 8)                         not null,
    datec          datetime                              null,
    tms            timestamp default current_timestamp() not null on update current_timestamp(),
    fk_user_creat  int                                   null,
    fk_user_modif  int                                   null,
    import_key     int                                   null,
    constraint uk_budget_lines
        unique (fk_budget, fk_project_ids),
    constraint fk_budget_lines_budget
        foreign key (fk_budget) references dolibardev.llx_budget (rowid)
);

