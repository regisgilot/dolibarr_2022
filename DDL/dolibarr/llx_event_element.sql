create table llx_event_element
(
    rowid      int auto_increment
        primary key,
    fk_source  int         not null,
    fk_target  int         not null,
    targettype varchar(32) not null
)
    engine = InnoDB;

