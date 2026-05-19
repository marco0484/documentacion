CREATE TABLE cosmic_pass.cat_events (
    id INTEGER NOT NULL,
    name VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL,
    price NUMERIC(10,2) NOT NULL,
    image VARCHAR(255),
    date DATE,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    id_productora INTEGER,
    ind_prioridad INTEGER,
    ind_activo INTEGER
);

CREATE TABLE cosmic_pass.cat_features (
    id_features INTEGER NOT NULL,
    name TEXT,
    icon TEXT,
    level INTEGER,
    ind_activo INTEGER
);

CREATE TABLE cosmic_pass.cat_productoras (
    id INTEGER NOT NULL,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    instagram VARCHAR(255),
    facebook VARCHAR(255),
    logo VARCHAR(255),
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    tiktok VARCHAR(255),
    youtube VARCHAR(255),
    x VARCHAR(255),
    whatsapp TEXT,
    fbevent TEXT
);


CREATE TABLE cosmic_pass.rel_productora_features (
    id_productora INTEGER NOT NULL,
    id_feature INTEGER NOT NULL
);


CREATE TABLE cosmic_pass.ticket_types (
    id INTEGER NOT NULL,
    id_evento INTEGER NOT NULL,
    id_productora INTEGER NOT NULL,
    tipo_ticket VARCHAR(100) NOT NULL,
    desc_ticket TEXT,
    precio NUMERIC(10,2) NOT NULL,
    stock_disponible INTEGER,
    fecha_inicio TIMESTAMP WITHOUT TIME ZONE,
    fecha_fin TIMESTAMP WITHOUT TIME ZONE,
    ind_activo INTEGER
);