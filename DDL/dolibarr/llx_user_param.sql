create table llx_user_param
(
    fk_user int           not null,
    entity  int default 1 not null,
    param   varchar(180)  not null,
    value   text          not null,
    constraint uk_user_param
        unique (fk_user, param, entity)
)
    engine = InnoDB;

