-- Migration 007: links publicos de download + contagem de downloads

ALTER TABLE builds ADD COLUMN IF NOT EXISTS download_slug VARCHAR(128);
ALTER TABLE builds ADD COLUMN IF NOT EXISTS download_token VARCHAR(64);
ALTER TABLE builds ADD COLUMN IF NOT EXISTS developer_name VARCHAR(128);
ALTER TABLE builds ADD COLUMN IF NOT EXISTS icon_file VARCHAR(255);
ALTER TABLE builds ADD COLUMN IF NOT EXISTS download_count INTEGER NOT NULL DEFAULT 0;

CREATE INDEX IF NOT EXISTS idx_builds_public_slug
    ON builds (download_slug)
    WHERE download_slug IS NOT NULL AND status = 'concluido';

CREATE INDEX IF NOT EXISTS idx_builds_public_slug_token
    ON builds (download_slug, download_token)
    WHERE download_slug IS NOT NULL AND download_token IS NOT NULL;

CREATE UNIQUE INDEX IF NOT EXISTS uq_builds_download_slug_concluido
    ON builds (download_slug)
    WHERE status = 'concluido' AND download_slug IS NOT NULL;

COMMENT ON COLUMN builds.download_count IS 'Quantidade de downloads publicos realizados via /aplicativo/';
