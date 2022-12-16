create or replace definer = axitam@localhost trigger llx_facture_after_insert
    after insert
    on llx_facture
    for each row
BEGIN
	call set_reduction_on_invoice(new.rowid, new.type, new.fk_soc);

END;

