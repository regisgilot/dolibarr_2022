create or replace  trigger llx_facturedet_AFTER_INSERT
    after insert
    on llx_facturedet
    for each row
BEGIN
	DECLARE new_id_detail int;
	SELECT LAST_INSERT_ID()
           INTO new_id_detail;
	insert into llx_facturedet_extrafields (fk_object, tms, un) 
	 SELECT  new_id_detail, now(), l.un from llx_propaldet_extrafields l where l.fk_object = NEW.rowid; 
	
END;

