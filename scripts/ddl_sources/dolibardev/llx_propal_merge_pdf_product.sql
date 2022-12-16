create table dolibardev.llx_propal_merge_pdf_product
(
    rowid          int auto_increment
        primary key,
    fk_product     int                                   not null,
    file_name      varchar(200)                          not null,
    lang           varchar(5)                            null,
    fk_user_author int                                   null,
    fk_user_mod    int                                   not null,
    datec          datetime                              not null,
    tms            timestamp default current_timestamp() not null on update current_timestamp(),
    import_key     varchar(14)                           null
)
    charset = latin1;

