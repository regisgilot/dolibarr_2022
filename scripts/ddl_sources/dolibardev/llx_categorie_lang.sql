create table dolibardev.llx_categorie_lang
(
    rowid       int auto_increment
        primary key,
    fk_category int        default 0   not null,
    lang        varchar(5) default '0' not null,
    label       varchar(255)           not null,
    description text                   null,
    constraint uk_category_lang
        unique (fk_category, lang),
    constraint fk_category_lang_fk_category
        foreign key (fk_category) references dolibardev.llx_categorie (rowid)
)
    charset = latin1;

