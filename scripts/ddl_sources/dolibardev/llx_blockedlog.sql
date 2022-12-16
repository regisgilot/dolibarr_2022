create table dolibardev.llx_blockedlog
(
    rowid          int auto_increment
        primary key,
    tms            timestamp   default current_timestamp() not null on update current_timestamp(),
    action         varchar(50)                             null,
    amounts        double(24, 8)                           not null,
    signature      varchar(100)                            not null,
    signature_line varchar(100)                            not null,
    element        varchar(50)                             null,
    fk_object      int                                     null,
    ref_object     varchar(255)                            null,
    date_object    datetime                                null,
    object_data    mediumtext                              null,
    fk_user        int                                     null,
    entity         int         default 1                   not null,
    certified      int                                     null,
    date_creation  datetime                                null,
    user_fullname  varchar(255)                            null,
    object_version varchar(32) default ''                  null
);

create index entity
    on dolibardev.llx_blockedlog (entity);

create index entity_action
    on dolibardev.llx_blockedlog (entity, action);

create index entity_action_certified
    on dolibardev.llx_blockedlog (entity, action, certified);

create index fk_object_element
    on dolibardev.llx_blockedlog (fk_object, element);

create index fk_user
    on dolibardev.llx_blockedlog (fk_user);

create index signature
    on dolibardev.llx_blockedlog (signature);

