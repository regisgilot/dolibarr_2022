create table dolibardev.llx_events
(
    rowid                 int auto_increment
        primary key,
    tms                   timestamp default current_timestamp() not null on update current_timestamp(),
    type                  varchar(32)                           not null,
    entity                int       default 1                   not null,
    dateevent             datetime                              null,
    fk_user               int                                   null,
    description           varchar(250)                          not null,
    ip                    varchar(250)                          null,
    user_agent            varchar(255)                          null,
    fk_object             int                                   null,
    prefix_session        varchar(255)                          null,
    authentication_method varchar(64)                           null,
    fk_oauth_token        int                                   null
)
    charset = latin1;

create index idx_events_dateevent
    on dolibardev.llx_events (dateevent);

