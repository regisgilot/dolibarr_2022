create table llx_c_paper_format
(
    rowid  int auto_increment
        primary key,
    code   varchar(16)              not null,
    label  varchar(128)             not null,
    width  float(6, 2) default 0.00 null,
    height float(6, 2) default 0.00 null,
    unit   varchar(5)               not null,
    active tinyint     default 1    not null,
    module varchar(32)              null
)
    engine = InnoDB;

