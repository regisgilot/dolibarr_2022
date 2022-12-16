create table dolibardev.llx_c_ziptown
(
    rowid     int auto_increment
        primary key,
    code      varchar(5)        null,
    fk_county int               null,
    fk_pays   int     default 0 not null,
    zip       varchar(10)       not null,
    town      varchar(255)      not null,
    active    tinyint default 1 not null,
    constraint uk_ziptown_fk_pays
        unique (zip, town, fk_pays),
    constraint fk_c_ziptown_fk_county
        foreign key (fk_county) references dolibardev.llx_c_departements (rowid),
    constraint fk_c_ziptown_fk_pays
        foreign key (fk_pays) references dolibardev.llx_c_country (rowid)
)
    charset = latin1;

create index idx_c_ziptown_fk_county
    on dolibardev.llx_c_ziptown (fk_county);

create index idx_c_ziptown_fk_pays
    on dolibardev.llx_c_ziptown (fk_pays);

create index idx_c_ziptown_zip
    on dolibardev.llx_c_ziptown (zip);

