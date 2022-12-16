create table llx_c_chargesociales
(
    id               int auto_increment
        primary key,
    libelle          varchar(128)       null,
    deductible       smallint default 0 not null,
    active           tinyint  default 1 not null,
    code             varchar(12)        not null,
    accountancy_code varchar(32)        null,
    fk_pays          int      default 1 not null,
    module           varchar(32)        null
)
    engine = InnoDB;

