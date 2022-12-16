create table llx_element_contact
(
    rowid             int auto_increment
        primary key,
    datecreate        datetime           null,
    statut            smallint default 5 null,
    element_id        int                not null,
    fk_c_type_contact int                not null,
    fk_socpeople      int                not null,
    constraint idx_element_contact_idx1
        unique (element_id, fk_c_type_contact, fk_socpeople),
    constraint fk_element_contact_fk_c_type_contact
        foreign key (fk_c_type_contact) references llx_c_type_contact (rowid)
)
    engine = InnoDB;

create index idx_element_contact_fk_socpeople
    on llx_element_contact (fk_socpeople);

