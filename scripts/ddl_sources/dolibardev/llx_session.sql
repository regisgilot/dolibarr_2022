create table dolibardev.llx_session
(
    session_id       varchar(50)  not null
        primary key,
    session_variable text         null,
    last_accessed    datetime     not null,
    fk_user          int          not null,
    remote_ip        varchar(64)  null,
    user_agent       varchar(255) null
);

