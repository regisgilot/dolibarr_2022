create table llx_c_input_method
(
    rowid   int auto_increment
        primary key,
    code    varchar(30)       null,
    libelle varchar(128)      null,
    active  tinyint default 1 not null,
    module  varchar(32)       null,
    constraint uk_c_input_method
        unique (code)
)
    engine = InnoDB;

