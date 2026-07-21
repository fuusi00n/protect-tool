-- Migration 002: separar administrador (master) dos usuarios (users)

CREATE TABLE IF NOT EXISTS master (
    id                  UUID            PRIMARY KEY DEFAULT gen_random_uuid(),
    username            VARCHAR(64)     NOT NULL UNIQUE,
    password            VARCHAR(255)    NOT NULL,
    status              user_status     NOT NULL DEFAULT 'active',
    total_builds        INTEGER         NOT NULL DEFAULT 0,
    successful_builds   INTEGER         NOT NULL DEFAULT 0,
    failed_builds       INTEGER         NOT NULL DEFAULT 0,
    created_at          TIMESTAMPTZ     NOT NULL DEFAULT NOW(),
    updated_at          TIMESTAMPTZ     NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_master_username ON master (username);
CREATE INDEX IF NOT EXISTS idx_master_status ON master (status);

INSERT INTO master (
    username,
    password,
    status,
    total_builds,
    successful_builds,
    failed_builds,
    created_at,
    updated_at
)
SELECT
    username,
    password,
    status,
    total_builds,
    successful_builds,
    failed_builds,
    created_at,
    updated_at
FROM users
WHERE role = 'owner'
ON CONFLICT (username) DO NOTHING;

DELETE FROM users WHERE role = 'owner';

ALTER TABLE users DROP CONSTRAINT IF EXISTS chk_users_role;

DROP INDEX IF EXISTS idx_users_role;

ALTER TABLE users DROP COLUMN IF EXISTS role;

DROP TYPE IF EXISTS user_role;
