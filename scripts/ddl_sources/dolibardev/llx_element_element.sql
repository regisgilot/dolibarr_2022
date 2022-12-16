create table dolibardev.llx_element_element
(
    rowid      int auto_increment
        primary key,
    fk_source  int         not null,
    sourcetype varchar(32) not null,
    fk_target  int         not null,
    targettype varchar(32) not null,
    constraint idx_element_element_idx1
        unique (fk_source, sourcetype, fk_target, targettype)
)
    charset = latin1;

create index idx_element_element_fk_target
    on dolibardev.llx_element_element (fk_target);

