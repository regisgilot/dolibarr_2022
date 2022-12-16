create table dolibardev.llx_opensurvey_user_formanswers
(
    fk_user_survey int  not null,
    fk_question    int  not null,
    reponses       text null
);

