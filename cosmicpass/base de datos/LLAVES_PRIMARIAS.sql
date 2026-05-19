ALTER TABLE cosmic_pass.cat_events
ADD CONSTRAINT rpk_01
PRIMARY KEY (id);

ALTER TABLE cosmic_pass.cat_features
ADD CONSTRAINT rpk_03
PRIMARY KEY (id_features);

ALTER TABLE cosmic_pass.cat_productoras
ADD CONSTRAINT rpk_02
PRIMARY KEY (id);

ALTER TABLE cosmic_pass.rel_productora_features
ADD CONSTRAINT rkp_04
PRIMARY KEY (id_productora, id_feature);

ALTER TABLE cosmic_pass.ticket_types
ADD CONSTRAINT rpk_05
PRIMARY KEY (id, id_productora);