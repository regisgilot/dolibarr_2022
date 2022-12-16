create table llx_c_email_templates
(
    rowid         int auto_increment
        primary key,
    entity        int          default 1                 not null,
    module        varchar(32)                            null,
    type_template varchar(32)                            null,
    lang          varchar(6)   default ''                null,
    private       smallint     default 0                 not null,
    fk_user       int                                    null,
    datec         datetime                               null,
    tms           timestamp    default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    label         varchar(180)                           null,
    position      smallint                               null,
    enabled       varchar(255) default '1'               null,
    active        tinyint      default 1                 not null,
    email_from    varchar(255)                           null,
    email_to      varchar(255)                           null,
    email_tocc    varchar(255)                           null,
    email_tobcc   varchar(255)                           null,
    topic         text                                   null,
    joinfiles     text                                   null,
    content       mediumtext                             null,
    content_lines text                                   null,
    constraint uk_c_email_templates
        unique (entity, label, lang)
)
    engine = InnoDB;

create index idx_type
    on llx_c_email_templates (type_template);

