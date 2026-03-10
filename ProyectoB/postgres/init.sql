CREATE TABLE IF NOT EXISTS conversaciones (
    id SERIAL PRIMARY KEY,
    mensaje_usuario TEXT NOT NULL,
    intencion VARCHAR(50),
    api_consultada VARCHAR(100),
    respuesta_bot TEXT NOT NULL,
    timestamp TIMESTAMP DEFAULT NOW()
);

CREATE INDEX idx_conversaciones_timestamp 
ON conversaciones(timestamp DESC);