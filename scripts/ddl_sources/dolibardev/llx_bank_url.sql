create table dolibardev.llx_bank_url
(
    rowid   int auto_increment
        primary key,
    fk_bank int          null,
    url_id  int          null,
    url     varchar(255) null,
    label   varchar(255) null,
    type    varchar(24)  not null,
    constraint uk_bank_url
        unique (fk_bank, url_id, type)
)
    charset = latin1;

create index idx_bank_url_url_id
    on dolibardev.llx_bank_url (url_id);

