create table dolibardev.llx_ecm_files
(
    rowid           int auto_increment
        primary key,
    ref             varchar(128)                          null,
    label           varchar(128)                          not null,
    share           varchar(128)                          null,
    entity          int       default 1                   not null,
    filename        varchar(255)                          not null,
    filepath        varchar(255)                          null,
    fullpath_orig   varchar(2048)                         null,
    description     text                                  null,
    keywords        text                                  null,
    cover           text                                  null,
    gen_or_uploaded varchar(12)                           null,
    extraparams     varchar(255)                          null,
    date_c          datetime                              null,
    tms             timestamp default current_timestamp() not null on update current_timestamp(),
    fk_user_c       int                                   null,
    fk_user_m       int                                   null,
    note_private    text                                  null,
    note_public     text                                  null,
    acl             text                                  null,
    position        int                                   null,
    keyword         varchar(750)                          null,
    src_object_type varchar(64)                           null,
    src_object_id   int                                   null,
    constraint uk_ecm_files
        unique (filepath, filename, entity)
);

create index idx_ecm_files_label
    on dolibardev.llx_ecm_files (label);

