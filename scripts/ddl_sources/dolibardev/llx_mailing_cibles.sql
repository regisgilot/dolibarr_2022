create table dolibardev.llx_mailing_cibles
(
    rowid       int auto_increment
        primary key,
    fk_mailing  int                                   not null,
    fk_contact  int                                   not null,
    lastname    varchar(160)                          null,
    firstname   varchar(160)                          null,
    email       varchar(160)                          not null,
    other       varchar(255)                          null,
    tag         varchar(64)                           null,
    statut      smallint  default 0                   not null,
    source_url  varchar(255)                          null,
    source_id   int                                   null,
    source_type varchar(32)                           null,
    date_envoi  datetime                              null,
    error_text  varchar(255)                          null,
    tms         timestamp default current_timestamp() not null on update current_timestamp(),
    constraint uk_mailing_cibles
        unique (fk_mailing, email)
)
    charset = latin1;

create index idx_mailing_cibles_email
    on dolibardev.llx_mailing_cibles (email);

create index idx_mailing_cibles_tag
    on dolibardev.llx_mailing_cibles (tag);

