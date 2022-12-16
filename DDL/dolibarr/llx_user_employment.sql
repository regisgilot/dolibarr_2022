create table llx_user_employment
(
    rowid             int auto_increment
        primary key,
    entity            int       default 1                 not null,
    ref               varchar(50)                         null,
    ref_ext           varchar(50)                         null,
    fk_user           int                                 null,
    datec             datetime                            null,
    tms               timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_user_creat     int                                 null,
    fk_user_modif     int                                 null,
    job               varchar(128)                        null,
    status            int                                 not null,
    salary            double(24, 8)                       null,
    salaryextra       double(24, 8)                       null,
    weeklyhours       double(16, 8)                       null,
    dateemployment    date                                null,
    dateemploymentend date                                null,
    constraint uk_user_employment
        unique (ref, entity),
    constraint fk_user_employment_fk_user
        foreign key (fk_user) references llx_user (rowid)
)
    engine = InnoDB;

