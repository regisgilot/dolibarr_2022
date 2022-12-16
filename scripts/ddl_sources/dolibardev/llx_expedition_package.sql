create table dolibardev.llx_expedition_package
(
    rowid           int auto_increment
        primary key,
    fk_expedition   int                              not null,
    description     varchar(255)                     null,
    value           double(24, 8) default 0.00000000 null,
    fk_parcel_type  int                              null,
    height          float                            null,
    width           float                            null,
    size            float                            null,
    size_units      int                              null,
    weight          float                            null,
    weight_units    int                              null,
    dangerous_goods smallint      default 0          null,
    tail_lift       smallint      default 0          null,
    rang            int           default 0          null
);

