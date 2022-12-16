create table llx_c_action_trigger
(
    rowid       int auto_increment
        primary key,
    elementtype varchar(64)   not null,
    code        varchar(64)   not null,
    label       varchar(128)  not null,
    description varchar(255)  null,
    rang        int default 0 null,
    constraint uk_action_trigger_code
        unique (code)
)
    engine = InnoDB;

create index idx_action_trigger_rang
    on llx_c_action_trigger (rang);

