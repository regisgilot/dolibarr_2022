create table dolibardev.llx_c_type_fees
(
    id               int auto_increment
        primary key,
    code             varchar(12)                            not null,
    label            varchar(128)                           null,
    accountancy_code varchar(32) collate utf8mb3_unicode_ci null,
    active           tinyint default 1                      not null,
    module           varchar(32)                            null,
    position         int     default 0                      not null,
    type             int     default 0                      null,
    constraint uk_c_type_fees
        unique (code)
)
    charset = latin1;

