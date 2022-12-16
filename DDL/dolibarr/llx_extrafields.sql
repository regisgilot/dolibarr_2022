create table llx_extrafields
(
    rowid          int auto_increment
        primary key,
    name           varchar(64)                            not null,
    entity         int          default 1                 not null,
    elementtype    varchar(64)  default 'member'          not null,
    label          varchar(255)                           not null,
    type           varchar(8)                             null,
    size           varchar(8)                             null,
    fieldcomputed  text                                   null,
    fielddefault   varchar(255)                           null,
    fieldunique    int          default 0                 null,
    fieldrequired  int          default 0                 null,
    perms          varchar(255)                           null,
    enabled        varchar(255)                           null,
    pos            int          default 0                 null,
    alwayseditable int          default 0                 null,
    param          text                                   null,
    list           varchar(255) default '1'               null,
    printable      int          default 0                 null,
    totalizable    tinyint(1)   default 0                 null,
    langs          varchar(64)                            null,
    help           text                                   null,
    css            varchar(128)                           null,
    cssview        varchar(128)                           null,
    csslist        varchar(128)                           null,
    fk_user_author int                                    null,
    fk_user_modif  int                                    null,
    datec          datetime                               null,
    tms            timestamp    default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    constraint uk_extrafields_name
        unique (name, entity, elementtype)
)
    engine = InnoDB;

