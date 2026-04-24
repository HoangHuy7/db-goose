-- +goose Up
CREATE TABLE IF NOT EXISTS goose_test_ping
(
    id SERIAL PRIMARY KEY,
    pinged_at TIMESTAMP DEFAULT NOW()
);

-- +goose Down
DROP TABLE goose_test_ping;