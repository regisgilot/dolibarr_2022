create or replace
    definer = axitam@localhost procedure set_reduction_on_invoice(IN invoice_id int, IN invoice_type int, IN invoice_societe int)
BEGIN
  -- Declare variables used just for cursor and loop control
 DECLARE no_more_rows BOOLEAN;
 DECLARE num_rows INT DEFAULT 0;
 DECLARE loop_link INT DEFAULT 0;
 DECLARE current_reduction_amount_ht double;
 DECLARE current_reduction_amount_tva double;
 DECLARE current_reduction_tva_tx double;
 DECLARE current_reduction_amount_ttc double;
 DECLARE current_reduction_fact_number VARCHAR(30);
 DECLARE current_id int;
 DECLARE new_id_detail int;

 -- Declare the cursor
 DECLARE reduction_linked CURSOR FOR SELECT t.amount_ht, t.amount_tva, t.tva_tx, t.amount_ttc, t.rowid, l.ref FROM llx_societe_remise_except t, llx_facture l WHERE t.fk_facture_source = l.rowid AND t.fk_soc = invoice_societe AND t.fk_facture_line IS NULL;

 -- Declare 'handlers' for exceptions
   DECLARE CONTINUE HANDLER FOR NOT FOUND  SET no_more_rows = TRUE;

   IF invoice_type = 0
   THEN
      OPEN reduction_linked;

      SELECT FOUND_ROWS()
        INTO num_rows;

     the_loop:
      LOOP
         FETCH reduction_linked
            INTO current_reduction_amount_ht,
                 current_reduction_amount_tva,
                 current_reduction_tva_tx,
                 current_reduction_amount_ttc,
                 current_id,
                 current_reduction_fact_number;

         -- break out of the loop if
         -- 1) there were no records, or
         -- 2) we've processed them all
         IF no_more_rows
         THEN
            CLOSE reduction_linked;

            LEAVE the_loop;
         END IF;

         SET loop_link = loop_link + 1;

         INSERT INTO llx_facturedet(fk_facture,
                                    label,
                                    description,
                                    tva_tx,
                                    localtax1_tx,
                                    localtax1_type,
                                    localtax2_tx,
                                    localtax2_type,
                                    qty,
                                    remise_percent,
                                    fk_remise_except,
                                    subprice,   -- current_reduction_amount_ht
                                    total_ht,   -- current_reduction_amount_ht
                                    total_tva, -- current_reduction_amount_tva
                                    total_localtax1,                    -- 0.0
                                    total_localtax2,                    -- 0.0
                                    total_ttc, -- current_reduction_amount_ttc
                                    product_type,
                                    date_start,
                                    date_end,
                                    info_bits,
                                    buy_price_ht,
                                    fk_product_fournisseur_price,
                                    fk_code_ventilation,
                                    special_code,
                                    rang,
                                    situation_percent)
                 VALUES (
                           invoice_id,
                           concat('Facture acompte ',
                                  current_reduction_fact_number),
                           concat('Facture acompte ',
                                  current_reduction_fact_number),
                           current_reduction_tva_tx,
                           0,
                           '0',
                           0.0,
                           '0',
                           1.0,                                         -- qty
                           0.0,
                           current_id,
                           current_reduction_amount_ht * -1,  -- total_ht  NOK
                           current_reduction_amount_ht * -1,  -- total_ht  NOK
                           current_reduction_amount_tva * -1,  -- total_tva ok
                           0.0,
                           0.0,
                           current_reduction_amount_ttc * -1,
                           0,
                           NULL,
                           NULL,
                           0,
                           0.0,
                           NULL,
                           0,
                           0,
                           loop_link * -1,
                           100.0);

         SELECT LAST_INSERT_ID()
           INTO new_id_detail;

         UPDATE llx_societe_remise_except t
            SET fk_facture_line = new_id_detail
          WHERE rowid = current_id;
      END LOOP the_loop;
   END IF;
END;

