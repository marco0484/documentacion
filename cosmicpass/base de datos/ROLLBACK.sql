-- =========================================================
-- ROLLBACK COMPLETO - COSMIC_PASS
-- =========================================================

-- =========================
-- FOREIGN KEYS
-- =========================

ALTER TABLE IF EXISTS cosmic_pass.ticket_types
DROP CONSTRAINT IF EXISTS fk_ticket_evento;

ALTER TABLE IF EXISTS cosmic_pass.ticket_types
DROP CONSTRAINT IF EXISTS fk_ticket_productora;

ALTER TABLE IF EXISTS cosmic_pass.rel_productora_features
DROP CONSTRAINT IF EXISTS fk_rel_productora;

ALTER TABLE IF EXISTS cosmic_pass.rel_productora_features
DROP CONSTRAINT IF EXISTS fk_rel_feature;

ALTER TABLE IF EXISTS cosmic_pass.cat_events
DROP CONSTRAINT IF EXISTS fk_cat_events_productora;


-- =========================
-- PRIMARY KEYS
-- =========================

ALTER TABLE IF EXISTS cosmic_pass.ticket_types
DROP CONSTRAINT IF EXISTS rpk_05;

ALTER TABLE IF EXISTS cosmic_pass.rel_productora_features
DROP CONSTRAINT IF EXISTS rkp_04;

ALTER TABLE IF EXISTS cosmic_pass.cat_features
DROP CONSTRAINT IF EXISTS rpk_03;

ALTER TABLE IF EXISTS cosmic_pass.cat_productoras
DROP CONSTRAINT IF EXISTS rpk_02;

ALTER TABLE IF EXISTS cosmic_pass.cat_events
DROP CONSTRAINT IF EXISTS rpk_01;


-- =========================
-- INDEXES
-- =========================

DROP INDEX IF EXISTS cosmic_pass.ind_05;
DROP INDEX IF EXISTS cosmic_pass.ind_04;
DROP INDEX IF EXISTS cosmic_pass.ind_03;
DROP INDEX IF EXISTS cosmic_pass.ind_02;
DROP INDEX IF EXISTS cosmic_pass.ind_01;


-- =========================
-- TABLES
-- =========================

DROP TABLE IF EXISTS cosmic_pass.ticket_types;

DROP TABLE IF EXISTS cosmic_pass.rel_productora_features;

DROP TABLE IF EXISTS cosmic_pass.cat_features;

DROP TABLE IF EXISTS cosmic_pass.cat_events;

DROP TABLE IF EXISTS cosmic_pass.cat_productoras;


-- =========================
-- SCHEMA
-- =========================

DROP SCHEMA IF EXISTS cosmic_pass;