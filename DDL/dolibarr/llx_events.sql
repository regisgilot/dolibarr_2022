create table llx_events
(
    rowid                 int auto_increment
        primary key,
    tms                   timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    type                  varchar(32)                         not null,
    entity                int       default 1                 not null,
    prefix_session        varchar(255)                        null,
    dateevent             datetime                            null,
    fk_user               int                                 null,
    description           varchar(250)                        not null,
    ip                    varchar(250)                        not null,
    user_agent            varchar(255)                        null,
    fk_object             int                                 null,
    authentication_method varchar(64)                         null,
    fk_oauth_token        int                                 null
)
    engine = InnoDB;

create index idx_events_dateevent
    on llx_events (dateevent);

