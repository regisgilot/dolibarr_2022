create table dolibardev.llx_user_clicktodial
(
    fk_user int          not null
        primary key,
    url     varchar(255) null,
    login   varchar(32)  null,
    pass    varchar(64)  null,
    poste   varchar(20)  null
)
    charset = latin1;

