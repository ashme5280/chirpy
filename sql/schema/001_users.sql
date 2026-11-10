-- +goose Up
CREATE EXTENSION IF NOT EXISTS "uuid-ossp"; -- or pgcrypto depending on postgres version

CREATE TABLE users (
    id UUID PRIMARY KEY,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    email TEXT UNIQUE NOT NULL
);

-- +goose Down
DROP TABLE users;
