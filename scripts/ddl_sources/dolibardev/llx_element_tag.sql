create table dolibardev.llx_element_tag
(
    rowid        int auto_increment
        primary key,
    entity       int default 1 not null,
    lang         varchar(5)    not null,
    tag          varchar(255)  not null,
    fk_element   int           not null,
    element      varchar(64)   not null,
    fk_categorie int           null,
    constraint idx_element_tag_uk
        unique (fk_categorie, fk_element),
    constraint uk_element_tag
        unique (entity, lang, tag, fk_element, element),
    constraint fk_element_tag_categorie_rowid
        foreign key (fk_categorie) references dolibardev.llx_categorie (rowid)
)
    charset = latin1;

