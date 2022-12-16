create table dolibardev.llx_actioncomm_resources
(
    rowid         int auto_increment
        primary key,
    fk_actioncomm int                not null,
    element_type  varchar(50)        not null,
    fk_element    int                not null,
    answer_status varchar(50)        null,
    mandatory     smallint           null,
    transparency  smallint default 1 null,
    constraint uk_actioncomm_resources
        unique (fk_actioncomm, element_type, fk_element)
)
    charset = latin1;

create index idx_actioncomm_resources_fk_element
    on dolibardev.llx_actioncomm_resources (fk_element);

