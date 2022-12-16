create or replace definer = axitam@localhost trigger llx_facture_BEFORE_UPDATE
    before update
    on llx_facture
    for each row
BEGIN
   IF NEW.fk_statut > 0 AND NEW.type > 0
   THEN
      SET NEW.paye := 1;
   END IF;
END;

