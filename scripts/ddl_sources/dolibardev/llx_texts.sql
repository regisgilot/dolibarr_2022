create table dolibardev.llx_texts
(
    rowid      int auto_increment
        primary key,
    module     varchar(32)                           null,
    typemodele varchar(32)                           null,
    sortorder  smallint                              null,
    private    smallint  default 0                   not null,
    fk_user    int                                   null,
    title      varchar(128)                          null,
    filename   varchar(128)                          null,
    content    text                                  null,
    tms        timestamp default current_timestamp() not null on update current_timestamp()
)
    charset = latin1;

