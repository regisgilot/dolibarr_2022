create table llx_c_email_senderprofile
(
    rowid         int auto_increment
        primary key,
    entity        int       default 1                 not null,
    private       smallint  default 0                 not null,
    date_creation datetime                            null,
    tms           timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    label         varchar(255)                        null,
    email         varchar(255)                        not null,
    signature     text                                null,
    position      smallint  default 0                 null,
    active        tinyint   default 1                 not null,
    constraint uk_c_email_senderprofile
        unique (entity, label, email)
)
    engine = InnoDB;

