ALTER TABLE users ALTER COLUMN id SET DEFAULT gen_random_uuid();

ALTER TABLE users ADD COLUMN IF NOT EXISTS daily_build_limit INTEGER NOT NULL DEFAULT 3;

ALTER TABLE users DROP CONSTRAINT IF EXISTS chk_users_daily_builds;

ALTER TABLE users ADD CONSTRAINT chk_users_daily_builds CHECK (daily_builds >= 0);

UPDATE users SET daily_build_limit = 3 WHERE daily_build_limit IS NULL;
