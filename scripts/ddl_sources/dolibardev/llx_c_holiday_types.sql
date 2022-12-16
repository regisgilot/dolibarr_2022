create table dolibardev.llx_c_holiday_types
(
    rowid             int auto_increment
        primary key,
    code              varchar(16)                  not null,
    label             varchar(255)                 not null,
    affect            int                          not null,
    delay             int                          not null,
    newbymonth        double(8, 5) default 0.00000 not null,
    fk_country        int                          null,
    block_if_negative int          default 0       not null,
    active            int          default 1       null,
    sortorder         smallint                     null,
    constraint uk_c_holiday_types
        unique (code)
)
    charset = latin1;

