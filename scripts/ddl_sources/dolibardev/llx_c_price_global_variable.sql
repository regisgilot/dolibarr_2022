create table dolibardev.llx_c_price_global_variable
(
    rowid       int auto_increment
        primary key,
    code        varchar(20)                      not null,
    description text                             null,
    value       double(24, 8) default 0.00000000 null
)
    charset = latin1;

