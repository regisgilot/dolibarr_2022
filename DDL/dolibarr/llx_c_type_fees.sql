create table llx_c_type_fees
(
    id               int auto_increment
        primary key,
    code             varchar(12)       not null,
    label            varchar(128)      null,
    type             int     default 0 null,
    accountancy_code varchar(32)       null,
    active           tinyint default 1 not null,
    module           varchar(32)       null,
    position         int     default 0 not null,
    constraint uk_c_type_fees
        unique (code)
)
    engine = InnoDB;

