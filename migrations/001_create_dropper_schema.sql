CREATE EXTENSION IF NOT EXISTS "pgcrypto";

DO $$ BEGIN
    CREATE TYPE user_role AS ENUM ('owner', 'operator');
EXCEPTION
    WHEN duplicate_object THEN NULL;
END $$;

DO $$ BEGIN
    CREATE TYPE user_status AS ENUM ('active', 'inactive');
EXCEPTION
    WHEN duplicate_object THEN NULL;
END $$;

DO $$ BEGIN
    CREATE TYPE build_status AS ENUM ('processando', 'concluido', 'erro');
EXCEPTION
    WHEN duplicate_object THEN NULL;
END $$;

CREATE TABLE IF NOT EXISTS users (
    id                  UUID            PRIMARY KEY DEFAULT gen_random_uuid(),
    username            VARCHAR(64)     NOT NULL UNIQUE,
    password            VARCHAR(255)    NOT NULL,
    role                user_role       NOT NULL DEFAULT 'operator',
    status              user_status     NOT NULL DEFAULT 'active',
    license_days        INTEGER,
    license_expires_at  TIMESTAMPTZ,
    total_builds        INTEGER         NOT NULL DEFAULT 0,
    successful_builds   INTEGER         NOT NULL DEFAULT 0,
    failed_builds       INTEGER         NOT NULL DEFAULT 0,
    created_at          TIMESTAMPTZ     NOT NULL DEFAULT NOW(),
    updated_at          TIMESTAMPTZ     NOT NULL DEFAULT NOW(),
    CONSTRAINT chk_users_role CHECK (role IN ('owner', 'operator'))
);

CREATE INDEX IF NOT EXISTS idx_users_role ON users (role);
CREATE INDEX IF NOT EXISTS idx_users_status ON users (status);
CREATE INDEX IF NOT EXISTS idx_users_license_expires_at ON users (license_expires_at);

CREATE TABLE IF NOT EXISTS builds (
    id              BIGSERIAL       PRIMARY KEY,
    user_id         UUID            NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    build_id        VARCHAR(64)     NOT NULL,
    app_name        VARCHAR(255)    NOT NULL,
    status          build_status    NOT NULL,
    output_file     VARCHAR(255),
    package_name    VARCHAR(255),
    error_message   TEXT,
    created_at      TIMESTAMPTZ     NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_builds_user_id ON builds (user_id);
CREATE INDEX IF NOT EXISTS idx_builds_build_id ON builds (build_id);
CREATE INDEX IF NOT EXISTS idx_builds_status ON builds (status);
CREATE INDEX IF NOT EXISTS idx_builds_created_at ON builds (created_at DESC);

CREATE TABLE IF NOT EXISTS activity_logs (
    id          BIGSERIAL       PRIMARY KEY,
    user_id     UUID            REFERENCES users (id) ON DELETE SET NULL,
    username    VARCHAR(64)     NOT NULL,
    action      VARCHAR(100)    NOT NULL,
    details     TEXT,
    created_at  TIMESTAMPTZ     NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_activity_logs_created_at ON activity_logs (created_at DESC);
CREATE INDEX IF NOT EXISTS idx_activity_logs_username ON activity_logs (username);
CREATE INDEX IF NOT EXISTS idx_activity_logs_action ON activity_logs (action);

CREATE TABLE IF NOT EXISTS settings (
    key         VARCHAR(100)    PRIMARY KEY,
    value       TEXT            NOT NULL,
    updated_at  TIMESTAMPTZ     NOT NULL DEFAULT NOW()
);

INSERT INTO settings (key, value) VALUES
    ('default_license_days', '30'),
    ('auto_cleanup_days', '7')
ON CONFLICT (key) DO NOTHING;
