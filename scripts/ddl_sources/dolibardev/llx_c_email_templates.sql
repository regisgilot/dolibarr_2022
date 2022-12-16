create table dolibardev.llx_c_email_templates
(
    rowid         int auto_increment
        primary key,
    entity        int          default 1                   not null,
    module        varchar(32)                              null,
    type_template varchar(32)                              null,
    lang          varchar(6)                               null,
    private       smallint     default 0                   not null,
    fk_user       int                                      null,
    datec         datetime                                 null,
    tms           timestamp    default current_timestamp() not null on update current_timestamp(),
    label         varchar(255)                             null,
    position      smallint                                 null,
    active        tinyint      default 1                   not null,
    topic         text                                     null,
    content       mediumtext                               null,
    content_lines text                                     null,
    enabled       varchar(255) default '1'                 null,
    joinfiles     varchar(255) default '1'                 null,
    email_from    varchar(255)                             null,
    email_to      varchar(255)                             null,
    email_tocc    varchar(255)                             null,
    email_tobcc   varchar(255)                             null,
    constraint uk_c_email_templates
        unique (entity, label, lang)
)
    charset = latin1;

create index idx_type
    on dolibardev.llx_c_email_templates (type_template);

