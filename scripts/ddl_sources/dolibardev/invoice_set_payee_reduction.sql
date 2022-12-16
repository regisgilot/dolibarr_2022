create or replace
    definer = axitam@localhost procedure invoice_set_payee_reduction(IN invoice_statut int,
                                                                                IN invoice_type int, IN invoice_id int,
                                                                                IN invoice_entity_id int,
                                                                                IN invoice_bank_account_id int,
                                                                                IN invoice_amount_ttc double,
                                                                                IN invoice_amount_ht double,
                                                                                IN invoice_amount_tva double,
                                                                                IN invoice_user_cre_id int,
                                                                                IN invoice_societe_id int)
BEGIN
   DECLARE reduction_exist   INT;
   DECLARE payement_exist    INT;
   DECLARE new_id_paiement   INT;

   -- si la facture est validée et que le type est accompte
   IF invoice_statut <> 0 AND invoice_type = 3
   THEN
      SELECT COUNT(*)
        INTO payement_exist
        FROM llx_paiement_facture
       WHERE fk_facture = invoice_id;

      -- verifier si un payement existe pour la facture
      IF payement_exist = 0
      THEN
         INSERT INTO llx_paiement(entity,
                                  datec,
                                  tms,
                                  datep,
                                  amount,
                                  fk_paiement,
                                  num_paiement,
                                  note,
                                  fk_bank,
                                  fk_user_creat,
                                  fk_user_modif,
                                  statut,
                                  fk_export_compta)
              VALUES (invoice_entity_id,                             -- entity
                      now(),                                          -- datec
                      now(),                                            -- tms
                      now(),                                          -- datep
                      invoice_amount_ttc,                            -- amount
                      2,                                        -- fk_paiement
                      '',                                      -- num_paiement
                      '',                                              -- note
                      invoice_bank_account_id,                      -- fk_bank
                      invoice_user_cre_id,                    -- fk_user_creat
                      NULL,                                   -- fk_user_modif
                      0,                                             -- statut
                      0);                                  -- fk_export_compta

         SELECT LAST_INSERT_ID()
           INTO new_id_paiement;



         -- créer le lien avec le payement dans la table de jointure payement facture si n'existe pas

         INSERT INTO llx_paiement_facture(fk_paiement, fk_facture, amount)
              VALUES (new_id_paiement, invoice_id, invoice_amount_ttc);
      END IF;

      -- Vérifier si le payement de l'accompte a été converti en reduction


      SELECT COUNT(*)
        INTO reduction_exist
        FROM llx_societe_remise_except
       WHERE fk_facture_source = invoice_id;

      IF reduction_exist = 0
      THEN
         INSERT INTO llx_societe_remise_except(fk_soc,
                                               datec,
                                               amount_ht,
                                               amount_tva,
                                               amount_ttc,
                                               fk_user,
                                               fk_facture_source,
                                               description)
              VALUES (invoice_societe_id,
                      now(),
                      invoice_amount_ht,
                      invoice_amount_tva,
                      invoice_amount_ttc,
                      invoice_user_cre_id,
                      invoice_id,
                      '(DEPOSIT)');
      END IF;
   END IF;
END;

