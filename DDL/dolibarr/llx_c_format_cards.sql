create table llx_c_format_cards
(
    rowid       int auto_increment
        primary key,
    code        varchar(50)   not null,
    name        varchar(50)   not null,
    paper_size  varchar(20)   not null,
    orientation varchar(1)    not null,
    metric      varchar(5)    not null,
    leftmargin  double(24, 8) not null,
    topmargin   double(24, 8) not null,
    nx          int           not null,
    ny          int           not null,
    spacex      double(24, 8) not null,
    spacey      double(24, 8) not null,
    width       double(24, 8) not null,
    height      double(24, 8) not null,
    font_size   int           not null,
    custom_x    double(24, 8) not null,
    custom_y    double(24, 8) not null,
    active      int           not null
)
    engine = InnoDB;

