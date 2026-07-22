DO $$
BEGIN
    IF EXISTS (
        SELECT 1
        FROM information_schema.columns
        WHERE table_schema = 'public'
          AND table_name = 'builds'
          AND column_name = 'master_id'
    ) THEN
        DELETE FROM builds WHERE master_id IS NOT NULL;
    END IF;
END $$;

ALTER TABLE builds DROP CONSTRAINT IF EXISTS chk_builds_owner;

DROP INDEX IF EXISTS idx_builds_master_id;

ALTER TABLE builds DROP COLUMN IF EXISTS master_id;

ALTER TABLE builds
    ALTER COLUMN user_id SET NOT NULL;
