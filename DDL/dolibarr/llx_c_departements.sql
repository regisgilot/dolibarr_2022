create table llx_c_departements
(
    rowid            int auto_increment
        primary key,
    code_departement varchar(6)        not null,
    fk_region        int               null,
    cheflieu         varchar(50)       null,
    tncc             int               null,
    ncc              varchar(50)       null,
    nom              varchar(50)       null,
    active           tinyint default 1 not null,
    constraint uk_departements
        unique (code_departement, fk_region),
    constraint fk_departements_fk_region
        foreign key (fk_region) references llx_c_regions (code_region)
)
    engine = InnoDB;

create index idx_departements_fk_region
    on llx_c_departements (fk_region);

