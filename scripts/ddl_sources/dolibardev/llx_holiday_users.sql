create table dolibardev.llx_holiday_users
(
    fk_user    int              not null,
    fk_type    int              not null,
    nb_holiday double default 0 not null,
    constraint uk_holiday_users
        unique (fk_user, fk_type)
)
    charset = latin1;

