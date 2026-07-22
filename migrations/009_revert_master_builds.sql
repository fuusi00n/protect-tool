DELETE FROM builds WHERE master_id IS NOT NULL;

ALTER TABLE builds DROP CONSTRAINT IF EXISTS chk_builds_owner;

DROP INDEX IF EXISTS idx_builds_master_id;

ALTER TABLE builds DROP COLUMN IF EXISTS master_id;

ALTER TABLE builds
    ALTER COLUMN user_id SET NOT NULL;
