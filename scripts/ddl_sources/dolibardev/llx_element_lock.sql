create table dolibardev.llx_element_lock
(
    rowid       int auto_increment
        primary key,
    fk_element  int          not null,
    elementtype varchar(32)  not null,
    datel       datetime     null,
    datem       datetime     null,
    sessionid   varchar(255) null
)
    charset = latin1;

