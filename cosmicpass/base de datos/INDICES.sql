CREATE UNIQUE INDEX IF NOT EXISTS ind_01
ON cosmic_pass.cat_events USING btree (id);

CREATE UNIQUE INDEX IF NOT EXISTS ind_03
ON cosmic_pass.cat_features USING btree (id_features);

CREATE UNIQUE INDEX IF NOT EXISTS ind_02
ON cosmic_pass.cat_productoras USING btree (id);

CREATE UNIQUE INDEX IF NOT EXISTS ind_04
ON cosmic_pass.rel_productora_features USING btree (id_productora, id_feature);

CREATE UNIQUE INDEX IF NOT EXISTS ind_05
ON cosmic_pass.ticket_types USING btree (id, id_evento);