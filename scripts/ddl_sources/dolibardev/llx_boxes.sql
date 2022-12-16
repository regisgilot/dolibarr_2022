create table dolibardev.llx_boxes
(
    rowid     int auto_increment
        primary key,
    entity    int default 1 not null,
    box_id    int           not null,
    position  smallint      not null,
    box_order varchar(3)    not null,
    fk_user   int default 0 not null,
    maxline   int           null,
    params    varchar(255)  null,
    constraint uk_boxes
        unique (entity, box_id, position, fk_user),
    constraint fk_boxes_box_id
        foreign key (box_id) references dolibardev.llx_boxes_def (rowid)
)
    charset = latin1;

create index idx_boxes_boxid
    on dolibardev.llx_boxes (box_id);

create index idx_boxes_fk_user
    on dolibardev.llx_boxes (fk_user);

