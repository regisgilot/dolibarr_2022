create table dolibardev.llx_societe_contacts
(
    rowid             int auto_increment
        primary key,
    entity            int       default 1                   not null,
    date_creation     datetime                              not null,
    fk_soc            int                                   not null,
    fk_c_type_contact int                                   not null,
    fk_socpeople      int                                   not null,
    tms               timestamp default current_timestamp() not null on update current_timestamp(),
    import_key        varchar(14)                           null,
    constraint idx_societe_contacts_idx1
        unique (entity, fk_soc, fk_c_type_contact, fk_socpeople),
    constraint fk_societe_contacts_fk_c_type_contact
        foreign key (fk_c_type_contact) references dolibardev.llx_c_type_contact (rowid),
    constraint fk_societe_contacts_fk_soc
        foreign key (fk_soc) references dolibardev.llx_societe (rowid),
    constraint fk_societe_contacts_fk_socpeople
        foreign key (fk_socpeople) references dolibardev.llx_socpeople (rowid)
);

