CREATE TABLE IF NOT EXISTS payments (
    id              BIGSERIAL       PRIMARY KEY,
    invoice_id      VARCHAR(128)    NOT NULL UNIQUE,
    amount          NUMERIC(18, 2)  NOT NULL CHECK (amount > 0),
    currency        CHAR(3)         NOT NULL,
    status          VARCHAR(32)     NOT NULL,
    checkout_url    TEXT            NOT NULL,
    created_at      TIMESTAMPTZ     NOT NULL DEFAULT NOW(),
    updated_at      TIMESTAMPTZ     NOT NULL DEFAULT NOW(),
    settled_at      TIMESTAMPTZ
);

CREATE INDEX IF NOT EXISTS idx_payments_status ON payments (status);
CREATE INDEX IF NOT EXISTS idx_payments_created_at ON payments (created_at DESC);

INSERT INTO settings (key, value, updated_at) VALUES
    ('payment_amount', '199.00', NOW()),
    ('payment_currency', 'BRL', NOW())
ON CONFLICT (key) DO NOTHING;