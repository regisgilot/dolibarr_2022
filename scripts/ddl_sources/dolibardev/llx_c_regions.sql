create table dolibardev.llx_c_regions
(
    rowid       int auto_increment
        primary key,
    code_region int               not null,
    fk_pays     int               not null,
    cheflieu    varchar(50)       null,
    tncc        int               null,
    nom         varchar(100)      null,
    active      tinyint default 1 not null,
    constraint uk_code_region
        unique (code_region)
)
    charset = latin1;

create index idx_c_regions_fk_pays
    on dolibardev.llx_c_regions (fk_pays);

