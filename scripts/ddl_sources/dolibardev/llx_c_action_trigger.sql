create table dolibardev.llx_c_action_trigger
(
    rowid       int auto_increment
        primary key,
    elementtype varchar(64)   null,
    code        varchar(128)  null,
    label       varchar(128)  not null,
    description varchar(255)  null,
    rang        int default 0 null,
    constraint uk_action_trigger_code
        unique (code)
)
    charset = latin1;

create index idx_action_trigger_rang
    on dolibardev.llx_c_action_trigger (rang);

