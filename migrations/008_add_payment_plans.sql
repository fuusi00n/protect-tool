ALTER TABLE payments
    ADD COLUMN IF NOT EXISTS plan_code VARCHAR(20),
    ADD COLUMN IF NOT EXISTS duration_days SMALLINT;

UPDATE payments SET plan_code = 'legacy' WHERE plan_code IS NULL;

ALTER TABLE payments
    ALTER COLUMN plan_code SET DEFAULT 'legacy',
    ALTER COLUMN plan_code SET NOT NULL;

DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_constraint WHERE conname = 'payments_duration_days_check'
    ) THEN
        ALTER TABLE payments ADD CONSTRAINT payments_duration_days_check
            CHECK (duration_days IS NULL OR duration_days > 0);
    END IF;
END $$;

INSERT INTO settings (key, value, updated_at) VALUES
    ('payment_amount_7d', '29.00', NOW()),
    ('payment_amount_15d', '49.00', NOW()),
    ('payment_amount_30d', '79.00', NOW())
ON CONFLICT (key) DO NOTHING;