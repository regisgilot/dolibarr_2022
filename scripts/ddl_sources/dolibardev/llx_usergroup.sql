create table dolibardev.llx_usergroup
(
    rowid     int auto_increment
        primary key,
    nom       varchar(255)                          not null,
    entity    int       default 1                   not null,
    datec     datetime                              null,
    tms       timestamp default current_timestamp() not null on update current_timestamp(),
    note      text                                  null,
    model_pdf varchar(255)                          null,
    constraint uk_usergroup_name
        unique (nom, entity)
)
    charset = latin1;

