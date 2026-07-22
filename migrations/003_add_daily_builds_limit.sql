ALTER TABLE builds DROP CONSTRAINT IF EXISTS builds_user_id_fkey;
ALTER TABLE activity_logs DROP CONSTRAINT IF EXISTS activity_logs_user_id_fkey;

CREATE TABLE users_new (
    id                  UUID            PRIMARY KEY,
    username            VARCHAR(64)     NOT NULL UNIQUE,
    password            VARCHAR(255)    NOT NULL,
    status              user_status     NOT NULL DEFAULT 'active',
    license_days        INTEGER,
    license_expires_at  TIMESTAMPTZ,
    daily_builds        INTEGER         NOT NULL DEFAULT 0,
    total_builds        INTEGER         NOT NULL DEFAULT 0,
    successful_builds   INTEGER         NOT NULL DEFAULT 0,
    failed_builds       INTEGER         NOT NULL DEFAULT 0,
    created_at          TIMESTAMPTZ     NOT NULL DEFAULT NOW(),
    updated_at          TIMESTAMPTZ     NOT NULL DEFAULT NOW(),
    CONSTRAINT chk_users_daily_builds CHECK (daily_builds >= 0 AND daily_builds <= 3)
);

INSERT INTO users_new (
    id,
    username,
    password,
    status,
    license_days,
    license_expires_at,
    daily_builds,
    total_builds,
    successful_builds,
    failed_builds,
    created_at,
    updated_at
)
SELECT
    id,
    username,
    password,
    status,
    license_days,
    license_expires_at,
    0,
    total_builds,
    successful_builds,
    failed_builds,
    created_at,
    updated_at
FROM users;

DROP TABLE users;
ALTER TABLE users_new RENAME TO users;

ALTER TABLE builds
    ADD CONSTRAINT builds_user_id_fkey
    FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE;

ALTER TABLE activity_logs
    ADD CONSTRAINT activity_logs_user_id_fkey
    FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE SET NULL;

CREATE INDEX IF NOT EXISTS idx_users_status ON users (status);
CREATE INDEX IF NOT EXISTS idx_users_license_expires_at ON users (license_expires_at);
CREATE INDEX IF NOT EXISTS idx_users_daily_builds ON users (daily_builds);

CREATE OR REPLACE FUNCTION fn_reset_users_daily_builds()
RETURNS void
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE users
    SET daily_builds = 0,
        updated_at = NOW()
    WHERE daily_builds <> 0;
END;
$$;

CREATE OR REPLACE FUNCTION fn_reset_daily_builds_if_new_day()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
DECLARE
    last_reset DATE;
BEGIN
    SELECT NULLIF(value, '')::DATE
    INTO last_reset
    FROM settings
    WHERE key = 'daily_builds_reset_date';

    IF last_reset IS NULL OR last_reset < CURRENT_DATE THEN
        PERFORM fn_reset_users_daily_builds();
        INSERT INTO settings (key, value, updated_at)
        VALUES ('daily_builds_reset_date', CURRENT_DATE::TEXT, NOW())
        ON CONFLICT (key) DO UPDATE
        SET value = CURRENT_DATE::TEXT,
            updated_at = NOW();
    END IF;

    RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS trg_reset_daily_builds_on_access ON users;

CREATE TRIGGER trg_reset_daily_builds_on_access
BEFORE INSERT OR UPDATE ON users
FOR EACH ROW
EXECUTE FUNCTION fn_reset_daily_builds_if_new_day();

DO $$
BEGIN
    CREATE EXTENSION IF NOT EXISTS pg_cron;

    PERFORM cron.unschedule(jobid)
    FROM cron.job
    WHERE jobname = 'reset_users_daily_builds';

    PERFORM cron.schedule(
        'reset_users_daily_builds',
        '0 0 * * *',
        $cron$UPDATE users SET daily_builds = 0, updated_at = NOW()$cron$
    );

    INSERT INTO settings (key, value, updated_at)
    VALUES ('daily_builds_reset_date', CURRENT_DATE::TEXT, NOW())
    ON CONFLICT (key) DO NOTHING;
EXCEPTION
    WHEN OTHERS THEN
        RAISE NOTICE 'pg_cron indisponivel; reset as 00:00 via trigger de fallback: %', SQLERRM;
END;
$$;
