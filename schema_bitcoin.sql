CREATE TABLE IF NOT EXISTS wallet_state (
    id                  SMALLINT PRIMARY KEY CHECK (id = 1),
    next_receive_index  BIGINT NOT NULL CHECK (next_receive_index >= 0),
    updated_at          TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

INSERT INTO wallet_state (id, next_receive_index)
VALUES (1, 0)
ON CONFLICT (id) DO NOTHING;

CREATE TABLE IF NOT EXISTS invoices (
    id                      BIGSERIAL PRIMARY KEY,
    invoice_id              UUID NOT NULL UNIQUE,
    description             VARCHAR(200) NOT NULL,
    fiat_amount             NUMERIC(18, 2) NOT NULL CHECK (fiat_amount > 0),
    currency                CHAR(3) NOT NULL,
    btc_rate                NUMERIC(24, 8) NOT NULL CHECK (btc_rate > 0),
    rate_source             VARCHAR(40) NOT NULL,
    expected_sats           BIGINT NOT NULL CHECK (expected_sats > 0),
    received_sats           BIGINT NOT NULL DEFAULT 0,
    confirmed_sats          BIGINT NOT NULL DEFAULT 0,
    bitcoin_address         TEXT NOT NULL UNIQUE,
    derivation_index        BIGINT NOT NULL UNIQUE,
    required_confirmations  SMALLINT NOT NULL DEFAULT 1,
    status                  VARCHAR(32) NOT NULL DEFAULT 'New',
    expires_at              TIMESTAMPTZ NOT NULL,
    detected_at             TIMESTAMPTZ,
    settled_at              TIMESTAMPTZ,
    last_checked_at         TIMESTAMPTZ,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_invoices_monitor
    ON invoices (status, expires_at, last_checked_at);

CREATE TABLE IF NOT EXISTS payment_outputs (
    id              BIGSERIAL PRIMARY KEY,
    invoice_id      BIGINT NOT NULL REFERENCES invoices (id) ON DELETE CASCADE,
    txid            CHAR(64) NOT NULL,
    vout            INTEGER NOT NULL CHECK (vout >= 0),
    value_sats      BIGINT NOT NULL CHECK (value_sats > 0),
    confirmed       BOOLEAN NOT NULL DEFAULT FALSE,
    block_height    BIGINT,
    confirmations   INTEGER NOT NULL DEFAULT 0,
    active          BOOLEAN NOT NULL DEFAULT TRUE,
    first_seen_at   TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    last_seen_at    TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    UNIQUE (txid, vout)
);

CREATE INDEX IF NOT EXISTS idx_outputs_invoice
    ON payment_outputs (invoice_id, active);
