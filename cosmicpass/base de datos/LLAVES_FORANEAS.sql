ALTER TABLE cosmic_pass.cat_events
ADD CONSTRAINT fk_cat_events_productora
FOREIGN KEY (id_productora)
REFERENCES cosmic_pass.cat_productoras(id);

ALTER TABLE cosmic_pass.rel_productora_features
ADD CONSTRAINT fk_rel_productora
FOREIGN KEY (id_productora)
REFERENCES cosmic_pass.cat_productoras(id);

ALTER TABLE cosmic_pass.rel_productora_features
ADD CONSTRAINT fk_rel_feature
FOREIGN KEY (id_feature)
REFERENCES cosmic_pass.cat_features(id_features);

ALTER TABLE cosmic_pass.ticket_types
ADD CONSTRAINT fk_ticket_evento
FOREIGN KEY (id_evento)
REFERENCES cosmic_pass.cat_events(id);

ALTER TABLE cosmic_pass.ticket_types
ADD CONSTRAINT fk_ticket_productora
FOREIGN KEY (id_productora)
REFERENCES cosmic_pass.cat_productoras(id);