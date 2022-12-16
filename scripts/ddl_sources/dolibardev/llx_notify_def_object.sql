create table dolibardev.llx_notify_def_object
(
    id         int auto_increment
        primary key,
    entity     int         default 1         not null,
    objet_type varchar(16)                   null,
    objet_id   int                           not null,
    type_notif varchar(16) default 'browser' null,
    date_notif datetime                      null,
    user_id    int                           null,
    moreparam  varchar(255)                  null
);

