create table dolibardev.llx_c_ecotaxe
(
    rowid        int auto_increment
        primary key,
    code         varchar(64)       not null,
    label        varchar(255)      null,
    price        double(24, 8)     null,
    organization varchar(255)      null,
    fk_pays      int               not null,
    active       tinyint default 1 not null,
    constraint uk_c_ecotaxe
        unique (code)
)
    charset = latin1;

