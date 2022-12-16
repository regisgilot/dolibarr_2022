create table dolibardev.llx_opensurvey_formquestions
(
    rowid             int auto_increment
        primary key,
    id_sondage        varchar(16) null,
    question          text        null,
    available_answers text        null
);

