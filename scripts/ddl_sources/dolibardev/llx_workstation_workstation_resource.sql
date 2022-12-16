create table dolibardev.llx_workstation_workstation_resource
(
    rowid          int auto_increment
        primary key,
    tms            timestamp default current_timestamp() not null on update current_timestamp(),
    fk_resource    int                                   null,
    fk_workstation int                                   null
);

