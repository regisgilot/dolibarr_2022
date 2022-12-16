create table llx_blockedlog
(
    rowid          int auto_increment
        primary key,
    entity         int         default 1                 not null,
    date_creation  datetime                              null,
    tms            timestamp   default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    action         varchar(50)                           null,
    amounts        double(24, 8)                         not null,
    element        varchar(50)                           null,
    fk_user        int                                   null,
    user_fullname  varchar(255)                          null,
    fk_object      int                                   null,
    ref_object     varchar(255)                          null,
    date_object    datetime                              null,
    signature      varchar(100)                          not null,
    signature_line varchar(100)                          not null,
    object_data    mediumtext                            null,
    object_version varchar(32) default ''                null,
    certified      int                                   null
)
    engine = InnoDB;

create index entity
    on llx_blockedlog (entity);

create index entity_action
    on llx_blockedlog (entity, action);

create index entity_action_certified
    on llx_blockedlog (entity, action, certified);

create index fk_object_element
    on llx_blockedlog (fk_object, element);

create index fk_user
    on llx_blockedlog (fk_user);

create index signature
    on llx_blockedlog (signature);

