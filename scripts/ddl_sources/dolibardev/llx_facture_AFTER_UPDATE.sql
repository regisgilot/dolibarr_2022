create or replace definer = axitam@localhost trigger llx_facture_AFTER_UPDATE
    after update
    on llx_facture
    for each row
    CALL invoice_set_payee_reduction(NEW.fk_statut,
                                 NEW.type,
                                 NEW.rowid,
                                 NEW.entity,
                                 NEW.fk_account,
                                 NEW.total_ttc,
								 NEW.total_ht,
								 NEW.total_tva,
                                 NEW.fk_user_author,
                                 NEW.fk_soc);

