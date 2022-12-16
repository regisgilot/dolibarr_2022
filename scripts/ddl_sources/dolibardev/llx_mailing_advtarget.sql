create table dolibardev.llx_mailing_advtarget
(
    rowid          int auto_increment
        primary key,
    name           varchar(200)                          not null,
    entity         int       default 1                   not null,
    filtervalue    text                                  null,
    fk_user_author int                                   not null,
    datec          datetime                              not null,
    fk_user_mod    int                                   not null,
    tms            timestamp default current_timestamp() not null on update current_timestamp(),
    fk_element     int                                   not null,
    type_element   varchar(180)                          not null,
    constraint uk_advtargetemailing_name
        unique (name)
);

