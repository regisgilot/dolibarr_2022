create table dolibardev.llx_menu
(
    rowid        int auto_increment
        primary key,
    menu_handler varchar(16)                           not null,
    entity       int       default 1                   not null,
    module       varchar(255)                          null,
    type         varchar(4)                            not null,
    mainmenu     varchar(100)                          not null,
    leftmenu     varchar(100)                          null,
    fk_menu      int                                   not null,
    fk_mainmenu  varchar(100)                          null,
    fk_leftmenu  varchar(100)                          null,
    position     int                                   not null,
    url          varchar(255)                          not null,
    target       varchar(100)                          null,
    titre        varchar(255)                          not null,
    prefix       varchar(255)                          null,
    langs        varchar(100)                          null,
    level        smallint                              null,
    perms        text                                  null,
    enabled      text                                  null,
    usertype     int       default 0                   not null,
    tms          timestamp default current_timestamp() not null on update current_timestamp(),
    constraint idx_menu_uk_menu
        unique (menu_handler, fk_menu, position, url, entity)
)
    charset = latin1;

create index idx_menu_menuhandler_type
    on dolibardev.llx_menu (menu_handler, type);

