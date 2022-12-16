create table dolibardev.llx_actioncomm_reminder
(
    rowid             int auto_increment
        primary key,
    dateremind        datetime      not null,
    typeremind        varchar(32)   not null,
    fk_user           int           not null,
    offsetvalue       int           not null,
    offsetunit        varchar(1)    not null,
    status            int default 0 not null,
    entity            int default 1 not null,
    fk_actioncomm     int           not null,
    fk_email_template int           null,
    lasterror         varchar(128)  null,
    constraint uk_actioncomm_reminder_unique
        unique (fk_user, typeremind, offsetvalue, offsetunit, fk_actioncomm)
);

create index idx_actioncomm_reminder_dateremind
    on dolibardev.llx_actioncomm_reminder (dateremind);

create index idx_actioncomm_reminder_fk_user
    on dolibardev.llx_actioncomm_reminder (fk_user);

create index idx_actioncomm_reminder_rowid
    on dolibardev.llx_actioncomm_reminder (rowid);

create index idx_actioncomm_reminder_status
    on dolibardev.llx_actioncomm_reminder (status);

