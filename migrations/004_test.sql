-- +goose Up
-- +goose StatementBegin
INSERT INTO goose_test_ping (pinged_at)
VALUES (CURRENT_TIMESTAMP);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM goose_test_ping WHERE pinged_at IS NOT NULL;
-- +goose StatementEnd