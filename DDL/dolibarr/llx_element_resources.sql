create table llx_element_resources
(
    rowid          int auto_increment
        primary key,
    element_id     int                                 null,
    element_type   varchar(64)                         null,
    resource_id    int                                 null,
    resource_type  varchar(64)                         null,
    busy           int                                 null,
    mandatory      int                                 null,
    duree          double                              null,
    fk_user_create int                                 null,
    tms            timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    constraint idx_element_resources_idx1
        unique (resource_id, resource_type, element_id, element_type)
)
    engine = InnoDB;

create index idx_element_element_element_id
    on llx_element_resources (element_id);

