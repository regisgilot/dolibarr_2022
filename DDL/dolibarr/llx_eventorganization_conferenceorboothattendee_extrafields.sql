create table llx_eventorganization_conferenceorboothattendee_extrafields
(
    rowid      int auto_increment
        primary key,
    tms        timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    fk_object  int                                 not null,
    import_key varchar(14)                         null
)
    engine = InnoDB;

create index idx_conferenceorboothattendee_fk_object
    on llx_eventorganization_conferenceorboothattendee_extrafields (fk_object);

