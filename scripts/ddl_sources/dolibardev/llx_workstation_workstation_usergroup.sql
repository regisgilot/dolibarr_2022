create table dolibardev.llx_workstation_workstation_usergroup
(
    rowid          int auto_increment
        primary key,
    tms            timestamp default current_timestamp() not null on update current_timestamp(),
    fk_usergroup   int                                   null,
    fk_workstation int                                   null
);

