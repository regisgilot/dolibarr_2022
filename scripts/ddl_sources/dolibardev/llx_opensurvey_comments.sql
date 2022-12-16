create table dolibardev.llx_opensurvey_comments
(
    id_comment    int unsigned auto_increment
        primary key,
    id_sondage    char(16)                              not null,
    comment       text                                  not null,
    tms           timestamp default current_timestamp() not null on update current_timestamp(),
    usercomment   text                                  null,
    ip            varchar(250)                          null,
    date_creation datetime                              null
)
    charset = latin1;

create index idx_id_comment
    on dolibardev.llx_opensurvey_comments (id_comment);

create index idx_id_sondage
    on dolibardev.llx_opensurvey_comments (id_sondage);

